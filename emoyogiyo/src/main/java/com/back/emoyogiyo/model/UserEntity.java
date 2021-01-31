package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
@AllArgsConstructor
@Alias("UserEntity")
public class UserEntity extends SimpleUserEntity{
	private String user_id;
	private String user_pw;
	private String salt;
	
}
