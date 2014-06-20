package com.optimisticlock;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.optimisticlock.threads.UpdateUser;

/**
 * 测试乐观锁-version
 * 测试用例:
 * 1.从spring容器中获得bean实例
 * 2.启动两个线程
 * @author Memego-
 *
 */
public class Test {

	public static void main(String[] args) {
		ApplicationContext ac= new ClassPathXmlApplicationContext("classpath*:Application_beans.xml");
		UpdateUser upus1=(UpdateUser) ac.getBean("updateUser");
		Thread t1=new Thread(upus1);
		Thread t2=new Thread(upus1);
		t1.start();
		t2.start();

	}

}
