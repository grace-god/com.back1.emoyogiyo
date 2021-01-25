package com.back.emoyogiyo.user;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.back.emoyogiyo.model.UserEntity;



@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	
	public List<UserEntity> userList() {	
		return mapper.userList();
	}
}
