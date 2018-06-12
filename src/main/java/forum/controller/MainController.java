package forum.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/")
public class MainController {
	
	@GetMapping
	public String index(HttpSession httpSession, ModelMap modelMap) {
		if (httpSession.getAttribute("username") != null ) {
			modelMap.addAttribute("username", (String) httpSession.getAttribute("username"));
		}
		return "index";
	}
	
	@GetMapping(value="exit/")
	public String exit(SessionStatus sessionStatus, HttpSession session) {
		sessionStatus.setComplete();
		session.removeAttribute("username");
		System.out.println("exit");
		return "redirect:/";
	}
}
