package com.back.emoyogiyo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor 
@AllArgsConstructor


public class SimpleUserEntity {
	protected int i_user;
	protected int store_num;
	protected String user_nm;
	protected String gender;
	protected String birthday;
	protected String make_date;
	protected String profile_uuid_nm;
	
	
	

	
}
