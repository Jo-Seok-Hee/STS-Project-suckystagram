package com.sucky.project.sns;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sucky.project.sns.vo.PostSNSVO;

@RestController
public class PostSNSRestContorller {
	
	@Autowired
	private PostSNSVO postSNSVO;
	
	@PostMapping("/post/uploadPost")
	public Map<String, String> uploadPost(
			@RequestParam("userName") String userName,
			@RequestParam("content") String content,
			@RequestParam(value="file", required=false) MultipartFile file,
			HttpServletRequest request
			){
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postSNSVO.addPost(userId, userName, content, file);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result","success");
		} else {
			result.put("result","fail");
		}
		
		return result;
		
	}
}
