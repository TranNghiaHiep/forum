package forum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import forum.entity.Account;
import forum.service.AccountService;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
	AccountService accountService;
	
	@GetMapping
	public String index() {
		return "register";
	}
	
	@PostMapping
	@Transactional
	public String registerProcess(@RequestParam String username, @RequestParam String password, @RequestParam String repassword, ModelMap modelmap) {
//		System.out.println(password.equals(repassword));
		if (password.equals(repassword)) {
			Account account = new Account();
			account.setUsername(username);
			account.setPassword(password);
			if (accountService.register(account)) {
				return "redirect:/login/";
			}
		} else {
			System.out.println("Mật khẩu và xác nhận không đúng");
		}
		
		return "register";
	}
}
