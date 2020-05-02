package com.edu.cake.global;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;

public class DaoFactory {
    private static DaoFactory daoFactory;
    private SqlSessionFactory sqlSessionFactory;
    private DaoFactory() throws IOException {
        SqlSessionFactoryBuilder sqlSessionFactoryBuilder = new SqlSessionFactoryBuilder();
        sqlSessionFactory = sqlSessionFactoryBuilder.build(Resources.getResourceAsReader("/mybatis-config.xml"),"dev");
    }
    public static DaoFactory getInstance() throws IOException {
        if (daoFactory == null)
            daoFactory = new DaoFactory();
        return  daoFactory;
    }

    public <T> T getDao(Class<T> tClass){
        return sqlSessionFactory.openSession(true).getMapper(tClass);
    }

}
