package com.back.emoyogiyo.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.back.emoyogiyo.model.UserEntity;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping("/login")
	public void login(Model model) {
		for(UserEntity item : service.userList()) {
			System.out.println(item.getI_user());
			System.out.println(item.getUser_nm());
		}
		
	}
	
	@PostMapping("/login")
	public void loginProc() {
		
	}
}
