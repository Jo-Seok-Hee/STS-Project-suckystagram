package com.sucky.project.sns;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sucky.project.sns.model.Post;
import com.sucky.project.sns.vo.SNSVO;



@Controller
public class PostSNSController {
	
	@Autowired
	private SNSVO snsVO;
	
	@GetMapping("/post/timeline")
	public String timeline(HttpServletRequest request,Model model) {
		
		HttpSession session =  request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		
		return "/post/timeline";
	}
}
