package com.cache.threads;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.entity.User;
/**
 * 测试session级别的缓存
 * @author Memego-
 *
 */
@Service("sessionCache")
public class SessionCache extends Thread {

	
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public void run(){
		Session session=sessionFactory.openSession();
		//事务1
		Transaction tx=session.beginTransaction();
		User user1=(User) session.get(User.class, Long.valueOf(1));
		System.out.println("usser1.getUsername="+user1.getUsername());
		tx.commit();
		System.out.println("000------000");
		//加入session.clear()之后，之前的缓存就会被清除
		//session.clear();
		//事务2
		tx=session.beginTransaction();
		User user2=(User) session.get(User.class, Long.valueOf(1));
		System.out.println("usser2.getUsername="+user2.getUsername());
		tx.commit();
		System.out.println("000------000");
		//判断两个事务分别获得的User对象是否同一个
		System.out.println("user1==user2?:"+(user1==user2));
		
		
	}
	
}
