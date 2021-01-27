package com.back.emoyogiyo.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.back.emoyogiyo.model.UserEntity;



@Mapper
public interface UserMapper {
	List<UserEntity> userList();
	UserEntity userlogin(UserEntity param);
}
