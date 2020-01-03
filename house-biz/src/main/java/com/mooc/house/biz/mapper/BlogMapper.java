package com.mooc.house.biz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mooc.house.common.model.Blog;
import com.mooc.house.common.page.PageParams;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface BlogMapper {

  List<Blog> selectBlog(@Param("blog") Blog query, @Param("pageParams") PageParams params);

  Long selectBlogCount(Blog query);
}
