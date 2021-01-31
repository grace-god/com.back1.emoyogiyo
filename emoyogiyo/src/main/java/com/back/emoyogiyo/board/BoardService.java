package com.back.emoyogiyo.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.MenuDomain;
import com.back.emoyogiyo.model.MenuEntity;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	public List<MenuDomain> selMenuList(MenuDTO p){
		System.out.println(p.getI_store());
		return mapper.selMenuList(p);
	}
}
