package com.edu.cake.dao;

import com.edu.cake.entity.Cake;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface CakeDao {
    @Insert("insert into cake(title,cid,image_path,price,taste,sweetness,weight,size,material,status,path) " +
                 "values(#{title},#{cid},#{image_path},#{price},#{taste},#{sweetness},#{weight},#{size},#{material},#{status},#{path})")
    @Options(useGeneratedKeys = true,keyProperty = "id")
    void insert(Cake cake);

    @Update("update cake set title = #{title},cid = #{cid},image_path = #{image_path},price = #{price}, taste = #{taste},sweetness = #{sweetness},weight = #{weight}, size = #{size},material = #{material}, status = #{status},path=#{path} where id = #{id}")
    void update(Cake cake);

    @Delete("delete from cake where id = #{id}")
    void delete(int id);

    @Select("select c.*,ca.title ctitle from cake c left join catalog ca on c.cid=ca.id where c.id = #{id}")
    @Results(id  = "all", value = {
            @Result(column = "title", property = "title"),
            @Result(column = "cid", property = "cid"),
            @Result(column = "image_path", property = "image_path"),
            @Result(column = "price", property = "price"),
            @Result(column = "taste", property = "taste"),
            @Result(column = "sweetness", property = "sweetness"),
            @Result(column = "weight", property = "weight"),
            @Result(column = "size", property = "size"),
            @Result(column = "material", property = "material"),
            @Result(column = "status", property = "status"),
            @Result(column = "path", property = "path"),
            @Result(column = "ctitle", property = "catalog.title")
    })
    Cake select(int id);

    @Select("select c.*,ca.title from cake c left join catalog ca on c.cid=ca.id order by id desc")
    @ResultMap("all")
    List<Cake> selectAll();
}
