package com.test;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.Resc;
import com.entity.Role;
import com.entity.User;

public class Test {

	public static void main(String[] args) {
		ApplicationContext ac= new ClassPathXmlApplicationContext("classpath*:Application_beans.xml");
		SessionFactory sessionFactory=(SessionFactory) ac.getBean("sessionFactory");
		Session session=sessionFactory.openSession();
		List<User> users=session.createCriteria(User.class).list();
		for(User u : users){
			System.out.println(u.getUsername()+":");
			Iterator<Role> roles=u.getRoles().iterator();
			while(roles.hasNext()){
				System.out.println("--"+roles.next().getName()+":");
			}
		}
		
		

	}

}
