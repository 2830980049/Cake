package com.edu.cake.controller;

import com.edu.cake.biz.CatalogBiz;
import com.edu.cake.biz.Impl.CatalogBizImpl;
import com.edu.cake.entity.Catalog;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CatalogController {
    private CatalogBiz catalogBiz = new CatalogBizImpl();

    public CatalogController() throws IOException {}

    //  /admin/Catalog/list.do
    public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Catalog root = catalogBiz.getRoot();
        request.setAttribute("root",root);
        System.out.println("root: "+root);
        request.getRequestDispatcher("/WEB-INF/pages/admin/catalog_list.jsp").forward(request,response);
    }

    //  /admin/Catalog/toAdd.do
    public void toAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Catalog root = catalogBiz.getRoot();
        request.setAttribute("root",root);
        request.getRequestDispatcher("/WEB-INF/pages/admin/catalog_add.jsp").forward(request,response);
    }

    //  /admin/Catalog/add.do
    public void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String[] titles = request.getParameterValues("title");
        String[] pids = request.getParameterValues("pid");
        String[] infos = request.getParameterValues("info");
        List<Catalog> list  = new ArrayList<Catalog>();
        int len = titles.length;
        for (int i = 0; i < len; i++){
            Catalog catalog = new Catalog();
            catalog.setTitle(titles[i]);
            catalog.setPid(Integer.parseInt(pids[i]));
            catalog.setInfo(infos[i]);
            list.add(catalog);
        }
        catalogBiz.add(list);
        response.sendRedirect(request.getContextPath()+"/admin/Catalog/list.do");
    }

    //  /admin/Catalog/remove.do
    public void remove(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println("id : "+id);
        catalogBiz.remove(id);
        response.sendRedirect(request.getContextPath()+"/admin/Catalog/list.do");
    }
}
