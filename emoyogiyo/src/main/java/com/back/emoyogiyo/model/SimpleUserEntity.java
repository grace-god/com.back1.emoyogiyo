package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
@AllArgsConstructor
@Alias("SimpleUserEntity")
public class SimpleUserEntity {
	protected int i_user;
	protected int store_num;
	protected String user_nm;
	protected String gender;
	protected String birthday;
	protected String make_date;
	protected String profile_uuid_nm;
	protected String ph_num;

	
	
	

	
}
