package com.back.emoyogiyo.board;

import java.util.List;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.MenuDomain;

public interface BoardMapper {
	List<MenuDomain> selMenuList(MenuDTO p);
}
