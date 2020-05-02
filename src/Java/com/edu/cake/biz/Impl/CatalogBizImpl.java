package com.edu.cake.biz.Impl;

import com.edu.cake.biz.CatalogBiz;
import com.edu.cake.dao.CatalogDao;
import com.edu.cake.entity.Catalog;
import com.edu.cake.global.DaoFactory;

import java.io.IOException;
import java.util.List;

public class CatalogBizImpl implements CatalogBiz {
    private CatalogDao catalogDao = DaoFactory.getInstance().getDao(CatalogDao.class);

    public CatalogBizImpl() throws IOException {}

    @Override
    public void add(List<Catalog> list) {
        catalogDao.batchInsert(list);
    }

    @Override
    public void remove(int id) {
        catalogDao.delete(id);
    }

    @Override
    public Catalog getRoot() {
        return catalogDao.select(10000);
    }
}
