package forum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping("/")
public class MainController {
	
	@GetMapping
	public String Default(@SessionAttribute("username") String username) {
		System.out.println(username);
		return "index";
	}
}
