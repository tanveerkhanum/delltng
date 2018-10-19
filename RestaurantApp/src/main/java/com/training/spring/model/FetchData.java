package com.training.spring.model;
import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



public class FetchData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

Configuration configuration = new Configuration().configure();
        
        SessionFactory factory = configuration.buildSessionFactory();
        Session session  = factory.openSession();
        
        Query query = session.createQuery("from com.training.spring.model.Item");
        Iterator<Item> allRec = query.iterate();
        while(allRec.hasNext())
        {
        	Item item= allRec.next();
        	System.out.println(item);
        }

        session.close();
        factory.close();
        
        System.out.println("Done");
	}

	}


