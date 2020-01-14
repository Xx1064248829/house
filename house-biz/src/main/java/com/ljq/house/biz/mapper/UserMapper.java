package com.ljq.house.biz.mapper;

import org.apache.ibatis.annotations.Mapper;
import com.ljq.house.common.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

  List<User> selectUsers();

  int insert(User account);

  void delete(String email);

  int update(User updateUser);

  List<User> selectUsersByQuery(User user);

  long selectUserCount();
}
