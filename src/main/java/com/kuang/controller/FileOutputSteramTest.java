package com.kuang.controller;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileOutputSteramTest {


    public static void main(String[] args) throws FileNotFoundException {

        FileOutputStream fileOutputStream = new FileOutputStream("C:\\Users\\1\\Desktop\\ss\\javaces.txt",true);
        String s="[%d{HH\\:mm\\:ss\\:SSS}][%p] (%c\\:%L) - %m%n ";
        byte[] bytes = s.getBytes();

        try {
            fileOutputStream.write(bytes);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }




}
