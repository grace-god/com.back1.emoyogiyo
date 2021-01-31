package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("MenuEntity")
public class MenuEntity {
	private int i_menu;
	private int i_store;
	private int seq;
	private String menu_nm;
	private String menu_img;
	private String r_dt;
	private int i_user;
	private int price;
}
