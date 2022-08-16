package com.laptrinhjavawed.model;

public class Account {
	int id;
	String username, user, pass;
	int isAdmin;
	

	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}



	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	public Account() {
		super();
	}

	public Account(int id, String username, String user, String pass, int isAdmin) {
		super();
		this.id = id;
		this.user = user;
		this.pass = pass;
		this.isAdmin = isAdmin;
		this.username = username;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", username=" + username + ", user=" + user + ", pass=" + pass + ", isAdmin="
				+ isAdmin + "]";
	}

	

	


}
