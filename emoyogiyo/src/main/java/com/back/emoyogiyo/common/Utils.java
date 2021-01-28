package com.back.emoyogiyo.common;

import org.mindrot.jbcrypt.BCrypt;

import com.back.emoyogiyo.model.SimpleUserEntity;
import com.back.emoyogiyo.model.UserEntity;

public class Utils {

	
	public static SimpleUserEntity ParsingUserEntity(UserEntity entity) {

		return new SimpleUserEntity(entity.getI_user(),entity.getStore_num(),entity.getUser_nm(),entity.getGender(),entity.getBirthday(),entity.getMake_date(),entity.getProfile_uuid_nm(),entity.getPh_num());
	}

	public static String gensalt() {
		return BCrypt.gensalt();
	}
	
	public static String hashPassword(String password,String salt) {
		return BCrypt.hashpw(password, salt);
	}
	
	
}
