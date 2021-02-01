package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("StoreEntity")
public class StoreEntity {
	private int i_store;
	private String store_nm;
	private String store_call;
	private String store_address;
	private String business_time;
	private String r_dt;
	private int i_user;
}
