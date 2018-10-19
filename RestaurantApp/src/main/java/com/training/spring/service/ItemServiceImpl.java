package com.training.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.training.spring.dao.ItemDAO;
import com.training.spring.model.Item;

public class ItemServiceImpl implements ItemService{
	
	@Autowired
	private ItemDAO itemDAO;

	public void setItemDAO(ItemDAO itemDAO) {
		this.itemDAO = itemDAO;
	}

	@Override
	@Transactional
	public void addItem(Item i) {
		this.itemDAO.addItem(i);
	}

	@Override
	@Transactional
	public List<Item> listItems() {
		// TODO Auto-generated method stub
		return itemDAO.listItems();
	}

	@Override
	@Transactional
	public String totalBill() {
		// TODO Auto-generated method stub
		return itemDAO.totalBill();
	}


}
