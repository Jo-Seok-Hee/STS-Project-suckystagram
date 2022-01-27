package com.sucky.project.sns;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sucky.project.sns.vo.SNSVO;

@RestController
public class SNSRestController {
	
	@Autowired
	private SNSVO snsVO;
	
	@PostMapping("/user/signUp")
	public Map<String, String> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("nickname") String nickname,
			@RequestParam("email") String email   
			){
		
		int count = snsVO.addSignUp(loginId, password, name, nickname, email);
		

		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	@PostMapping("/user/isDuplicatedId")
	public Map<String, String> isDuplicatedId(
			@RequestParam("loginId")String loginId
			){
		Map<String, String> result = new HashMap<>();
		
		boolean duplicate = snsVO.isDuplicatedId(loginId);
		
		if(duplicate == true) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
