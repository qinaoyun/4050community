package cn.jit.edu.entity;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity (name="user")
public class User {
	String date;
	String accounttype;
	String  email;
	String  password;
	String username;
	String  tel;
	String  enterprise;
	@Id
	String ID;
	
	
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}   
}
