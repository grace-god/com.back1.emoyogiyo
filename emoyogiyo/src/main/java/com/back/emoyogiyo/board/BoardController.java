package com.back.emoyogiyo.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.MenuEntity;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/main")
	public void main(Model model, MenuDTO p, HttpServletRequest request) {
		p.setI_store(Integer.parseInt(request.getParameter("i_store")));
		System.out.println(p.getI_store());
		model.addAttribute("list",service.selMenuList(p));
	}
	
}
