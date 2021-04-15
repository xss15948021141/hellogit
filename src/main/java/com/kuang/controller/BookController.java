package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;



    @Controller
    @RequestMapping("/book")
    public class BookController {

        @Autowired
        @Qualifier("BookServiceImpl")
        private BookService bookService;
        @RequestMapping("/allBook")
        public String list(Model model) {
            List<Books> list = bookService.queryAllBook();
            model.addAttribute("list", list);
            return "allBook";
        }
        /*跳转到增加书籍的页面*/
        @RequestMapping("/toAddBook")
        public String toAddBook(){
            return "addBook";
        }

       /* 添加书籍*/
      /*  如果有这个注解@ResponseBody的话视图解析器不起作用*/
        @RequestMapping("/addBook")
        public String addBook(Books books){
        /*    业务层调用service层方法，添加书籍*/
            bookService.addBook(books);
            return "redirect:/book/allBook";
            /*重定向到我们的  @RequestMapping("/book")的allbook 不走视图解析器了*/
        }
        /*跳转到删除书籍的页面*/
        @RequestMapping("/toDeleateBook")
        public String toDeleateBook(){

            return "deleateBook";
        }
        //根据id删除所选书籍
        @RequestMapping("/deleateBook")
        public String deleateBook(int bookID){
            bookService.deleteBookById(bookID);
            return "redirect:/book/allBook";
        }
        /**
         * 跳转到更新页面
         * */
        @RequestMapping("/toUpdateBook")
        public String toUpdateBook(int bookID,Model model){
            Books books = bookService.queryBookById(bookID);
            model.addAttribute("QBooks",books);
            return "updateBook";
        }

        @RequestMapping("/updateBook")
        public  String updateBook(Books books,Model model){
            bookService.updateBook(books);
       /*     List<Books> list = bookService.queryAllBook();
            model.addAttribute("list", list);*/
            return "redirect:/book/allBook";

        }
       @RequestMapping("/nowDeleateBook")
        public String nowDeleateBook(int bookID,Model model){
            bookService.deleteBookById(bookID);
           return "redirect:/book/allBook";
       }




    }

