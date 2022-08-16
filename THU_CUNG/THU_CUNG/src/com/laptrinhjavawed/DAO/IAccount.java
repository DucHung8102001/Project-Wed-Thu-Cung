package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Account;

public interface IAccount {
	List<Account> getOneAccount(String user, String pass);
	boolean CheckAcount(String user,String pass);
	boolean CheckNewAccount(String user);
	boolean InsertAccount(String name, String user, String pass,int isAdmin);
	Account CheckSignin (String user, String pass);
}
