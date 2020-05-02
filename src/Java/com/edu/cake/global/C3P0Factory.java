package com.edu.cake.global;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mchange.v2.c3p0.jboss.C3P0PooledDataSource;
import org.apache.ibatis.datasource.unpooled.UnpooledDataSourceFactory;

public class C3P0Factory extends UnpooledDataSourceFactory {
    public C3P0Factory(){
        this.dataSource = new ComboPooledDataSource();
    }
}


