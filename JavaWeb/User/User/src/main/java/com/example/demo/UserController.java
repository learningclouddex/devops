package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @Autowired
    UserRepository userRepo;
    
    @RequestMapping("/home")
    public String home() {
         return "home.jsp";
    }
    
    @RequestMapping(value="/createUser")
    public String createUser(@RequestParam String name, @RequestParam String address,Model model) {
    	User user = new User();
    	user.setName(name);
    	user.setAddress(address);
    	userRepo.save(user);
    	model.addAttribute("users", userRepo.findAll());
        return "users.jsp";
    }
    
    @RequestMapping("/users")
    public String getUsers(Model model) {
         model.addAttribute("users", userRepo.findAll());
         return "users.jsp";
    }
}
