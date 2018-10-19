package com.training.spring.dao;

import java.util.List;

import com.training.spring.model.Item;

public interface ItemDAO {
	

		public void addItem(Item i);
		public List<Item> listItems() ;
		public String totalBill();
	}


