package com.cache.threads;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.entity.Resc;
import com.entity.User;

@Service("secondLevelCache")
public class SecondLevelCache extends Thread {

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public void run(){
		Session session1=sessionFactory.openSession();
		//事务1
		Transaction tx1=session1.beginTransaction();
		Resc rs1=(Resc) session1.load(Resc.class, Long.valueOf(1));
		System.out.println("rs.getRes_string:"+rs1.getRes_string());
		tx1.commit();
		session1.close();
		System.out.println("000------000");
		
		//事务2
		Session session2=sessionFactory.openSession();
		Transaction tx2=session2.beginTransaction();
		Resc rs2=(Resc) session2.load(Resc.class, Long.valueOf(1));
		System.out.println("rs.getRes_string:"+rs2.getRes_string());
		tx2.commit();
		session2.close();
		System.out.println("000------000");
		//判断两个事务分别获得的User对象是否同一个
		System.out.println("rs1==rs2?:"+(rs1==rs2));
		
		
	}
	
	
}
