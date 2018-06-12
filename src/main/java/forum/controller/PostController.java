package forum.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("create/")
public class PostController {

	@GetMapping
	public String index(HttpSession httpSession, ModelMap modelMap) {
		if (httpSession.getAttribute("username") != null ) {
			modelMap.addAttribute("username", (String) httpSession.getAttribute("username"));
		}
		return "create";
	}
}
