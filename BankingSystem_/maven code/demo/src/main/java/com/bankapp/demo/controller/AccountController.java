package com.bankapp.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bankapp.demo.model.Account;
import com.bankapp.demo.services.AccountService;



@RestController
@RequestMapping("/bank")
public class AccountController {
	
	@Autowired
	private AccountService accountService;
	
	 @PostMapping("/newaccount")
	    public ResponseEntity<Account> createAccount(@RequestBody Account account) {
	        Account createdAccount = accountService.createAccount(account);
	        return new ResponseEntity<>(createdAccount, HttpStatus.CREATED);
	    }

}
