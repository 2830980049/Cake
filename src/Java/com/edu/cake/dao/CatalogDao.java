package com.edu.cake.dao;

import com.edu.cake.entity.Catalog;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CatalogDao {
    @Insert("<script>" +
            "insert into catalog(title,pid,info) values" +
            "<foreach collection = 'list' item = 'catalog' separator = ','>" +
            "(#{catalog.title},#{catalog.pid},#{catalog.info})" +
            "</foreach>" +
            "</script>")
    @Options(useGeneratedKeys = true, keyProperty = "id") //是否设置成主键自增
    void batchInsert(List<Catalog> list);


    @Delete("delete from catalog where id = #{id}")
    void delete(int id);

    @Select("select * from catalog where id = #{id}")
    @Results(id = "all", value = {
            //主键指定
            @Result(column = "id", property = "id", id = true),

            @Result(column = "title", property = "title"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "info", property = "info"),
            //关联  一对多
            @Result(column = "id", property = "children", many = @Many(select = "selectByPid"))
    })
    Catalog select(int id);

    @Select("select * from catalog where pid = #{pid}")   // 调用以前面已经定义的Results
    @ResultMap("all")
    List<Catalog> selectByPid(int pid);


}
