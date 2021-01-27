package com.back.emoyogiyo.user;


import javax.servlet.http.HttpSession;
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
	
	@GetMapping("/test")
	public void test() {}
	
	@GetMapping("/login")
	public void login(Model model) {}
	
	@PostMapping("/login")
	public String loginProc(UserEntity param,Model model,HttpSession session) {
		int result = service.userlogin(param,session);
		String msg;
				
		switch (result) {
		case 3:
			return "user/test";
		case 1:
			msg ="아이디가 틀렸습니다.";	
			break;
		case 2:
			msg ="비밀번호가 틀렸습니다.";
			break;
		}

		return "null";
	}
	
	@GetMapping("/join")
	public void join(Model model) {}

	@PostMapping("/join")
	public String join(UserEntity param) {
		service.insUser(param);
		return "redirect:/user/login";	
	}

}
