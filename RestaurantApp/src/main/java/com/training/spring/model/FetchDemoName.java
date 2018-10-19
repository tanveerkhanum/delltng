package com.training.spring.model;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FetchDemoName {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Configuration config=new Configuration().configure();
		SessionFactory  factory=config.buildSessionFactory();
		Session session=factory.openSession();
		Long data=(Long) session.createQuery("select sum(itemPrice) from com.training.spring.model").uniqueResult();
		System.out.println(data);
		Query query=session.createQuery("from com.training.spring.model");
		session.close();
		factory.close();
		System.out.println("Done");


	}

}

