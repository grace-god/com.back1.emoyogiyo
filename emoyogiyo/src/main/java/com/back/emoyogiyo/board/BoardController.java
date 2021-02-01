package com.back.emoyogiyo.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.StoreDTO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@GetMapping("/main")
	public void main(Model model, MenuDTO p, StoreDTO pa, HttpServletRequest request) {
		p.setI_store(Integer.parseInt(request.getParameter("i_store")));
		pa.setI_store(Integer.parseInt(request.getParameter("i_store")));
		model.addAttribute("list", service.selMenuList(p));
		model.addAttribute("inf", service.selSideInf(pa));
	}
	
}
