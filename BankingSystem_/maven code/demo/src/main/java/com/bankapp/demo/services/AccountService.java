package com.bankapp.demo.services;

import org.springframework.beans.factory.annotation.Autowired;


import com.bankapp.demo.model.Account;
import com.bankapp.demo.repository.AccountSql;

public class AccountService {

	@Autowired 
	private AccountSql sqlService;
	
	public Account createAccount(Account account)
	{
		sqlService.createNewAccount(account.getAccountId(),account.getName());
		return account;
	}
}
