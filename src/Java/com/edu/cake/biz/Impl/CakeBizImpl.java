package com.edu.cake.biz.Impl;

import com.edu.cake.biz.CakeBiz;
import com.edu.cake.dao.CakeDao;
import com.edu.cake.entity.Cake;
import com.edu.cake.global.DaoFactory;

import java.io.IOException;
import java.util.List;

public class CakeBizImpl implements CakeBiz {
    private CakeDao cakeDao = DaoFactory.getInstance().getDao(CakeDao.class);

    public CakeBizImpl() throws IOException {
    }

    @Override
    public void add(Cake cake) {
        cakeDao.insert(cake);
    }

    @Override
    public void edit(Cake cake) {
        cakeDao.update(cake);
    }

    @Override
    public void remove(int id) {
        cakeDao.delete(id);
    }

    @Override
    public Cake get(int id) {
        return cakeDao.select(id);
    }

    @Override
    public List<Cake> getAll() {
        return cakeDao.selectAll();
    }
}
