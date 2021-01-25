package com.back.emoyogiyo.model;

import lombok.Data;

@Data
public class UserEntity {
	private int i_user;
	private int store_num;
	private String user_id;
	private String user_pw;
	private String salt;
	private String user_nm;
	private String gender;
	private String birthday;
	private String make_date;
	private String profile_uuid_nm;
}
