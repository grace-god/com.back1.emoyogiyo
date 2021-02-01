package com.back.emoyogiyo.user;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		String msg = "";
		
		switch (result) {
		case 3:
			return "redirect:/board/main?i_store=1";
		case 1:
			msg ="아이디가 틀렸습니다.";	
			break;
		case 2:
			msg ="비밀번호가 틀렸습니다.";
			break;
		}
		model.addAttribute("msg", msg);
		return "/user/login";
	}
	
	@GetMapping("/join")
	public void join(Model model) {}

	@PostMapping("/join")
	public String join(UserEntity param) {
		service.insUser(param);
		return "redirect:/user/login";	
	}
	
	@ResponseBody
	@GetMapping("/idChk/{user_id}")
	public Map<String, Boolean> idChk(UserEntity param){
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("idChk", service.idChk(param));
		return map;
	}

}
