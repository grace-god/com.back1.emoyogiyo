package com.back.emoyogiyo.board;

import java.util.List;

import com.back.emoyogiyo.model.MenuDTO;
import com.back.emoyogiyo.model.MenuDomain;
import com.back.emoyogiyo.model.StoreDTO;
import com.back.emoyogiyo.model.StoreDomain;

public interface BoardMapper {
	List<MenuDomain> selMenuList(MenuDTO p);
	List<StoreDomain> selSideInf(StoreDTO p);
}
