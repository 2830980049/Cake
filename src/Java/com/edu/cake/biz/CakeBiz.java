package com.edu.cake.biz;

import com.edu.cake.entity.Cake;

import java.util.List;

/**
*  DEV
*/
public interface CakeBiz {
    void add(Cake cake);
    void edit(Cake cake);
    void remove(int id);
    Cake get(int id);
    List<Cake> getAll();
}
