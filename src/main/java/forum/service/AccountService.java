package forum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forum.dao.AccountDAO;
import forum.daoImp.IAccount;
import forum.entity.Account;

@Service
public class AccountService implements IAccount {
	
	@Autowired
	AccountDAO accountDAO;
	public boolean checkLogin(String username, String password) {
		return accountDAO.checkLogin(username, password);
	}
	
	public boolean register(Account account) {
		return accountDAO.register(account);
	}
}
