package forum.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import forum.entity.Account;

@Controller
@RequestMapping("/login")
public class LoginController {
	@GetMapping
	public String Default() {
		return "login";
	}
	
	@Autowired
	SessionFactory sessionFactory;
	
	@PostMapping
	@Transactional
	public String loginProcess(@RequestParam String username, @RequestParam String password) {
		System.out.println(username + password);
		
		Session session = sessionFactory.getCurrentSession();
//		Account account1 = (Account) session.createQuery("from account where username='" + username + "' and password='" + password + "'").getSingleResult();
		try {
			Account account = (Account) session.createQuery("from account where username='" + username + "' and password='" + password + "'").getSingleResult();
			if (account != null) {
				System.out.println("Đăng nhập thành công");
			}
		} catch (Exception e) {
			System.out.println("Đăng nhập thất bại");
		}
		
		return "login";
	}
}
