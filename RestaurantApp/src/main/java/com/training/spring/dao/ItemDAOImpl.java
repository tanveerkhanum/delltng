package com.training.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.training.spring.model.Item;
import com.training.spring.model.Person;

 
	
	@Repository
	public class ItemDAOImpl implements ItemDAO {
		
		private static final Logger logger = LoggerFactory.getLogger(ItemDAOImpl.class);

		private SessionFactory sessionFactory;
		
		public void setSessionFactory(SessionFactory sf){
			this.sessionFactory = sf;
		}

		@Override
		public void addItem(Item i) {
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(i);
			logger.info("item saved successfully, item Details="+i);
		}

		@SuppressWarnings("unchecked")
		@Override
		public List<Item> listItems() {
			Session session = this.sessionFactory.getCurrentSession();
			List<Item> itemList = session.createQuery("from Item").list();
			for(Item p : itemList){
				logger.info("Item List::"+p);
			}
			return itemList;
		}
		
		@SuppressWarnings("unchecked")
		@Override
		public String totalBill() {
			Session session = this.sessionFactory.getCurrentSession();
			String data=(String) session.createQuery("select sum(itemPrice) from com.training.spring.model.Item").uniqueResult();
			
			return data;
		}
	}

