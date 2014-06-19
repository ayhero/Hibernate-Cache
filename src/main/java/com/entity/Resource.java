package com.entity;
/**
 * 定义登陆页面，登陆成功页面，登陆失败页面
 * @author Memego-
 *
 */
public enum Resource {

	LOGIN_URL("login.jsp"),
    LOGIN_SUCCESS_URL("admin.jsp"),
    LOGIN_FAILED_URL("faile.jsp");
	
    private String url;
    
    Resource(String url){
    	this.url=url;
    }
    
    public String toString(){
    	return this.url;
    }
}
