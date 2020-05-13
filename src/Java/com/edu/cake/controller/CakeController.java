package com.edu.cake.controller;

import com.edu.cake.biz.CakeBiz;
import com.edu.cake.biz.CatalogBiz;
import com.edu.cake.biz.Impl.CakeBizImpl;
import com.edu.cake.biz.Impl.CatalogBizImpl;
import com.edu.cake.entity.Cake;
import com.edu.cake.entity.Catalog;
import com.edu.cake.untils.FileUploads;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class CakeController {
    private CakeBiz cakeBiz = new CakeBizImpl();
    private CatalogBiz catalogBiz = new CatalogBizImpl();

    public CakeController() throws IOException {}

    //    /admin/Cake/list.do
    public void list(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        String pageNum = req.getParameter("pageNum");
        if (pageNum == null)
            pageNum = "1";
        PageHelper.startPage(Integer.parseInt(pageNum),20);
        List<Cake> cake = cakeBiz.getAll();
        PageInfo pageInfo = PageInfo.of(cake);
        req.setAttribute("pageInfo", pageInfo);
        req.getRequestDispatcher("/WEB-INF/pages/admin/cake_list.jsp").forward(req,resp);
    }

//    /admin/Cake/toAdd.do
    public void toAdd(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        Catalog root = catalogBiz.getRoot();
        req.setAttribute("root",root);
        req.getRequestDispatcher("/WEB-INF/pages/admin/cake_add.jsp").forward(req,resp);
    }

//    /admin/Cake/add.do
    public void add(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        Cake cake = FileUploads.uploadFile(req);
        cakeBiz.add(cake);
        resp.sendRedirect(req.getContextPath()+"/admin/Cake/list.do");
    }

//    /admin/Cake/toEdit.do
    public void toEdit(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Cake cake = cakeBiz.get(id);
        req.setAttribute("cake",cake);
        Catalog root = catalogBiz.getRoot();
        req.setAttribute("root",root);
        req.getRequestDispatcher("/WEB-INF/pages/admin/cake_add.jsp").forward(req,resp);
    }

//    /admin/Cake/edit.do
    public void edit(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        Cake cake = FileUploads.uploadFile(req);
        cakeBiz.edit(cake);
        resp.sendRedirect(req.getContextPath()+"/admin/Cake/list.do");
    }

//    /admin/Cake/remove.do
    public void remove(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Cake cake = cakeBiz.get(id);
        System.out.println(cake.getPath());
        if (cake.getPath() != null && !"".equals(cake.getPath())){
            File file = new File(cake.getPath());
            if (file.exists())
                file.delete();
        }
        cakeBiz.remove(id);
        resp.sendRedirect(req.getContextPath()+"/admin/Cake/list.do");
    }

//    /admin/Cake/detail.do
    public void detail(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Cake cake = cakeBiz.get(id);
        req.setAttribute("cake",cake);
        req.getRequestDispatcher("/WEB-INF/pages/admin/cake_detail.jsp").forward(req,resp);
    }
}