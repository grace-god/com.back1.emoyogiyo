package com.back.emoyogiyo.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.MenuDomain;
import com.back.emoyogiyo.model.StoreDTO;
import com.back.emoyogiyo.model.StoreDomain;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	public List<MenuDomain> selMenuList(MenuDTO p){
		return mapper.selMenuList(p);
	}
	public List<StoreDomain> selSideInf(StoreDTO p){
		return mapper.selSideInf(p);
	}
}
