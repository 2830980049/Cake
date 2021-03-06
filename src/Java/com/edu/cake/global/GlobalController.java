package com.edu.cake.global;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

//  核心控制器
public class GlobalController extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        /***
         *  .do
         *  /login.do           DefaultController  login
         *  /Cake/detail.do     CakeController     detail
         *  /admin/Cake/add.do  CakeController     add
         */
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String path = request.getServletPath();
        if (path.indexOf("/admin") != -1)
            path = path.substring(7);
        else
            path = path.substring(1);

        /***
         *  login.do           DefaultController  login
         *  Cake/detail.do     CakeController     detail
         *  admin/Cake/add.do  CakeController     add
         */
        int index = path.indexOf("/");
        String className;
        String methodName;
        if (index != -1){
            className = "com.edu.cake.controller." + path.substring(0,index) + "Controller";
            methodName = path.substring(index+1,path.indexOf(".do"));
        }
        else{
            className = "com.edu.cake.controller.DefaultController";
            methodName = path.substring(0,path.indexOf(".do"));
        }

        try {
            System.out.println(className+" "+methodName);
            Class cla = Class.forName(className);
            Object object = cla.newInstance();
            Method method = cla.getMethod(methodName,HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(object,request,response);
        }
       catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }
}
