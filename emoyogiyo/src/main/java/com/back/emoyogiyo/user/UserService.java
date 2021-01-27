package com.back.emoyogiyo.user;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	public int userlogin(UserEntity param,HttpSession session) {
		UserEntity dbdata= mapper.userlogin(param);
						
		if(dbdata==null) {//아이디 없을떄
			return 1;
		}
		String param_pw = Utils.hashPassword(param.getUser_pw(), dbdata.getSalt());
		if(!dbdata.getUser_pw().equals(param_pw)) {
			return 2;
		}
		session.setAttribute("user",Utils.ParsingUserEntity(dbdata));
		return 3;
	}
}
