package forum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import forum.dao.AccountDAO;
import forum.daoImp.IAccount;

@Service
public class AccountService implements IAccount {
	
	@Autowired
	AccountDAO accountDAO;
	public boolean checkLogin(String username, String password) {
		return accountDAO.checkLogin(username, password);
	}
}
