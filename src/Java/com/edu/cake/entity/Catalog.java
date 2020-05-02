package com.edu.cake.entity;

import java.util.ArrayList;
import java.util.List;

public class Catalog {
    private int id;
    private String title;
    private int pid;
    private String info;

    private List<Catalog> children = new ArrayList<Catalog>();

    public List<Catalog> getChildren() {
        return children;
    }

    @Override
    public String toString() {
        return "Catalog{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", pid=" + pid +
                ", info='" + info + '\'' +
                ", children=" + children +
                '}';
    }

    public void setChildren(List<Catalog> children) {
        this.children = children;
    }

    public Catalog() {
    }

    public Catalog(int id, String title, int pid, String info) {
        this.id = id;
        this.title = title;
        this.pid = pid;
        this.info = info;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
