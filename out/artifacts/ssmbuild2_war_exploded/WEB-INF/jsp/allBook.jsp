<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>

</head>
<body>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<div class="container" align="center">
  <div class="row clearfix">
      <div class="col-md-12 column">
          <div class="page-header">
              <h1>
                  <small>书籍展示页面-----显示所有书籍</small>
              </h1>

          </div>

      </div>
      <div class="row">
         <a href="${pageContext.request.contextPath}/book/toAddBook">
             <button type="button" class="btn btn-primary">添加书籍</button></a>

              <a href="${pageContext.request.contextPath}/book/toDeleateBook">
                  <button type="button" class="btn btn-primary">删除书籍</button></a>
       <%--   <a href="${pageContext.request.contextPath}/book//toUpdateBook">
              <button type="button" class="btn btn-primary">更新书籍</button></a>
          <a href="${pageContext.request.contextPath}/book/toDeleateBook">
              <button type="button" class="btn btn-primary">查询具体书籍</button></a>--%>

      </div>


  </div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-striped">
                  <thead>
                  <tr>
                      <th>书籍编号</th>
                      <th>书籍名称</th>
                      <th>书籍数量</th>
                      <th>书籍详情</th>
                      <th>操作</th>
                  </tr>
                  </thead>
                    <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdateBook?bookID=${book.bookID}" methods="post">更新</a>  &nbsp;|&nbsp;&nbsp;

                                <a href="${pageContext.request.contextPath}/book/nowDeleateBook?bookID=${book.bookID}" methods="post">删除</a>


                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
    </div>
</div>

</body>
</html>
