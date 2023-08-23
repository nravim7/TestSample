package com.bankapp.demo.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class AccountSql {

	private final JdbcTemplate jdbcTemplate;

    @Autowired
    public AccountSql(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
	 
	public boolean createNewAccount(long accountId,String name)
	{
		this.jdbcTemplate.update("INSERT INTO bank(AccountId, Name, Balance) VALUES ("+accountId+","+name+",0)");
		return true;
	}
}
