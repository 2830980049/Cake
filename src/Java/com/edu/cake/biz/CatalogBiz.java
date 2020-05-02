package com.edu.cake.biz;

import com.edu.cake.entity.Catalog;

import java.util.List;

public interface CatalogBiz {
    void add(List<Catalog> list);
    void remove(int id);
    Catalog getRoot();
}
