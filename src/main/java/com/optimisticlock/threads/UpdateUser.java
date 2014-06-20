package com.optimisticlock.threads;


import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.StaleObjectStateException;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.entity.User;
/**
 * 测试乐观锁用例
 * 1.从数据库获得指定id值的实体对象
 * 2.判断status属性值，若是1则更改为2，若是2则更改为1
 * 3.线程休眠1秒
 * 4.提交更新
 * 5.关闭线程，并对可能触发的乐观锁异常处理。
 * @author Memego-
 *
 */
@Service(value="updateUser")
public class UpdateUser extends Thread {

	@Resource
	private SessionFactory sessionFactory;
	@Override
	public void run() {

		try {
			Session session=sessionFactory.openSession();
			Transaction tx=session.beginTransaction();
			User user=(User) session.load(User.class, Long.valueOf(1));
			System.out.println(this.getName()+"更新前user的status的值:"+user.getStatus());
			if(user.getStatus()==1){
				user.setStatus(2);
			}else{
				user.setStatus(1);
			}
			session.update(user);
			System.out.println(this.getName()+"休眠");
			Thread.sleep(1000);
			System.out.println(this.getName()+"提交更新");
			tx.commit();
			session.close();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (StaleObjectStateException e){
			System.out.println(e.getEntityName()+e.getMessage());
		}
		
	}

	
	
}
