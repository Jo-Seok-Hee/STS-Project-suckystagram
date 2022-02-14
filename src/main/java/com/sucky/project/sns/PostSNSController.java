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
import com.sucky.project.sns.vo.PostSNSVO;
import com.sucky.project.sns.vo.SNSVO;



@Controller
public class PostSNSController {
	
	@Autowired
	private PostSNSVO postSNSVO;
	
	@GetMapping("/post/timeline")
	public String timeline(Model model) {
		
		List<Post> postList = postSNSVO.getPostList();
		
		model.addAttribute("postList", postList);
		
		
		
		return "/post/timeline";
	}
}
