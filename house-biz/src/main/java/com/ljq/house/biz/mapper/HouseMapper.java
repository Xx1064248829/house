package com.ljq.house.biz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

import com.ljq.house.common.model.Community;
import com.ljq.house.common.model.House;
import com.ljq.house.common.model.HouseUser;
import com.ljq.house.common.model.UserMsg;
import com.ljq.house.common.model.User;
import com.ljq.house.common.page.PageParams;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public interface HouseMapper {

  List<House> selectPageHouses(
      @Param("house") House house, @Param("pageParams") PageParams pageParams);

  Long selectPageCount(@Param("house") House query);

  int insert(User account);

  List<Community> selectCommunity(Community community);

  int insert(House house);

  HouseUser selectHouseUser(
      @Param("userId") Long userId, @Param("id") Long houseId, @Param("type") Integer value);

  HouseUser selectSaleHouseUser(@Param("id") Long houseId);

  int insertHouseUser(HouseUser houseUser);

  int insertUserMsg(UserMsg userMsg);

  int updateHouse(House updateHouse);

  int updateHouseAll(House updateHouse);

  int downHouse(Long id);

  int deleteHouseUser(
      @Param("id") Long id, @Param("userId") Long userId, @Param("type") Integer value);

  List<House> selectHouses();

 // boolean batchImport(String fileName, MultipartFile file) throws Exception;

  House selectHouseById(@Param("id") Long id);

  List<String> selectNationCount();

  @Select("SELECT COUNT(*) FROM house")
  public int selectHouseCount();

  @Delete("DELETE FROM house WHERE ID = #{id}")
  void delete(Integer id);
}
