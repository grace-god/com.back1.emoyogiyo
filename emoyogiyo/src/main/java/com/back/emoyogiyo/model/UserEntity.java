package com.back.emoyogiyo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
@AllArgsConstructor

public class UserEntity extends SimpleUserEntity{
	private String user_id;
	private String user_pw;
	private String salt;
	
}
