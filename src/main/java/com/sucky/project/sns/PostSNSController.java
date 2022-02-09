package com.sucky.project.sns;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.sucky.project.sns.model.SNS;

@Controller
public class PostSNSController {
	
	@GetMapping("/post/timeline")
	public String timeline(HttpServletRequest request,Model model) {
		
		HttpSession session =  request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		
		return "/post/timeline";
	}
}
