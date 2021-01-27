package com.back.emoyogiyo.user;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.back.emoyogiyo.common.Utils;
import com.back.emoyogiyo.model.UserEntity;



@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	
	public List<UserEntity> userList() {	
		return mapper.userList();
	}
	
	public void insUser(UserEntity param) {
		String salt = Utils.gensalt();
		String secertpassword = Utils.hashPassword(param.getUser_pw(), salt);
		param.setUser_pw(secertpassword);
		param.setSalt(salt);
		mapper.insUser(param);
	}
}
