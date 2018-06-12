package forum.daoImp;

import forum.entity.Account;

public interface IAccount {
	public boolean checkLogin(String username, String password);
	public boolean register(Account account);
}
