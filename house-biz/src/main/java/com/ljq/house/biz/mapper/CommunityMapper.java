package com.ljq.house.biz.mapper;

import com.ljq.house.common.model.Community;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommunityMapper {

    @Select("SELECT * FROM community")
    List<Community> selectAllCommunity();

    @Select("SELECT COUNT(*) FROM community")
    Long selectCount();

    @Insert("INSERT INTO community(CITY_CODE,NAME,CITY_NAME) VALUES(#{cityCode},#{name},#{cityName})")
    Integer insert(Community community);

    @Select("SELECT * FROM community WHERE ID = #{id}")
    Community getCommunityById(@Param("id") Integer id);

    @Update("UPDATE community SET CITY_CODE = #{cityCode},NAME=#{name},CITY_NAME =#{cityName} WHERE ID = #{id}")
    void update(Community community);

    @Delete("DELETE FROM community WHERE ID = #{id}")
    void delete(Integer id);
}
