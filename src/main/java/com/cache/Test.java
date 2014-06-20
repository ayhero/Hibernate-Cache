package com.cache;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cache.threads.SecondLevelCache;
import com.cache.threads.SessionCache;

public class Test {

	ApplicationContext ac= new ClassPathXmlApplicationContext("classpath*:Application_beans.xml");
	
	
	/**
	 * 测试session级别的缓存
	 */
	public void testSessionCache(){
		//org.springframework.cache.ehcache.EhCacheManagerFactoryBean
		SessionCache ssc=(SessionCache) ac.getBean("sessionCache");
		Thread t1=new Thread(ssc);
		t1.start();
	}
	
	public void testSecondLevelCache(){
		SecondLevelCache slc=(SecondLevelCache) ac.getBean("secondLevelCache");
		Thread t1=new Thread(slc);
		t1.start();
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test t=new Test();
		//t.testSessionCache();
		t.testSecondLevelCache();
		
	}

}
