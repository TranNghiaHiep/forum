package forum.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import forum.daoImp.IAccount;
import forum.entity.Account;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class AccountDAO implements IAccount {

	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean checkLogin(String username, String password) {
		
		Session session = sessionFactory.getCurrentSession();
		try {
			Account account = (Account) session.createQuery("from account where username='" + username + "' and password='" + password + "'").getSingleResult();
			if (account != null) {
				
				System.out.println("Đăng nhập thành công");
				return true;
			}
		} catch (Exception e) {
			System.out.println("Đăng nhập thất bại");
		}
		return false;
	}
	
	@Transactional
	public boolean register(Account account) {
		
		Session session = sessionFactory.getCurrentSession();
		try {
			int id = (Integer) session.save(account);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Đăng ký thất bại");
		}
		return false;
	}
	
	
}
