package com.training.spring.service;

import java.util.List;

import com.training.spring.model.Item;

public interface ItemService {
	public void addItem(Item i);
	public List<Item> listItems() ;
	public String totalBill();

}
