package com.entity;

import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Version;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.OptimisticLockType;

@Entity
/*
 * 使用hibernate的Entity
 * 当检查的字段为所有字段时，要加上dynamicUpdate=true配置
 * 其余情况不必配置dynamicUpdate属性
 * @author Memego-
 *
 */
@org.hibernate.annotations.Entity(
		dynamicUpdate=true,
		optimisticLock = OptimisticLockType.ALL
)
public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)  
	private long id;
	private String username;
	private String password;
	private int status;
	private String descn;
	/*
	@Version
	private int version;
	
	public int getVersion() {
		return version;
	}
	public void setVersion(int version) {
		this.version = version;
	}

	*/
	
	@OneToMany(targetEntity=Role.class, fetch=FetchType.EAGER, cascade=CascadeType.ALL)  
	@Fetch(FetchMode.SELECT)
	@JoinTable(joinColumns=@JoinColumn(name="user_id",nullable=true),
				name="User_Role",inverseJoinColumns=@JoinColumn(name="role_id"))
	
	private Set<Role> roles;
	
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDescn() {
		return descn;
	}
	public void setDescn(String descn) {
		this.descn = descn;
	}
	
	
}
