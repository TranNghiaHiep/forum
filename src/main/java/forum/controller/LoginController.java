package forum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import forum.service.AccountService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@GetMapping
	public String Default() {
		return "login";
	}
	
	@Autowired
	AccountService accountService;
	
	@PostMapping
	@Transactional
	public String loginProcess(@RequestParam String username, @RequestParam String password, ModelMap modelmap) {
		
		if (accountService.checkLogin(username,password)) {
			return "index";
		}
		return "login";
	}
}
