package com.back.emoyogiyo.model;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("StoreDomain")
public class StoreDomain extends StoreEntity{
	private String category;
}
