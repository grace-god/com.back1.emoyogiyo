package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("MenuDomain")
public class MenuDomain extends MenuEntity{
	private int star_point;
}
