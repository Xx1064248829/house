package com.ljq.house.biz.mapper;

import com.ljq.house.common.model.Admin;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Repository
public interface AdminMapper {

  List<Admin> selectAdmins();

  int insert(Admin admin);

  int delete(Integer id);

  int update(Admin updateAdmin);

  List<Admin> selectAdminsByQuery(Admin admin);

  List<Admin> selectAdminByName(Admin admin);

  Admin selectAdminById(Integer id);

  long selectAdminCount();

  @Select("SELECT * FROM admin WHERE NAME LIKE #{name}")
  List<Admin> getAdminByName(@RequestParam("name") String name);

  @Select("SELECT COUNT(*) FROM admin WHERE NAME LIKE #{name}")
  Long getadminCount(@RequestParam("name") String name);
}
