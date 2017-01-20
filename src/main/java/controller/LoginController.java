package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.authentication;
import service.authenticationImp;

@Controller 
public class LoginController {
	
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String login() {

		return "welcome";
	}
	
	@RequestMapping(value="/loginController", method=RequestMethod.POST)
	public String loginAuth(user user, boolean remember,
			Model model, HttpServletResponse response , HttpSession session){
		
		authentication auth = new authenticationImp();
		if(auth.authentication(user)){
			
			//user user = new user(username,password);
			
			if(remember){
				Cookie cookie = new Cookie("user",user.getUsername());
				cookie.setMaxAge(30*24*60*60);
				response.addCookie(cookie);
				
				
			}
			else if(!remember){
				Cookie cookie = new Cookie("user",null);
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			
			session.setAttribute("user", user);
			//model.addAttribute("user",user);
			return "welcome";
			
		}
		else{
			model.addAttribute("message","username or password are incorrect");
			return "login";
		}
		
	}
	
	@RequestMapping(value="/logoutController", method=RequestMethod.POST)
	public String logout(Model model, HttpServletRequest request){
		
		for (Cookie cookie : request.getCookies()) {
			if (cookie.getName().equals("user")) {
				model.addAttribute("user",cookie.getValue()); 
			} 
		}

		return "login";
	}

}
