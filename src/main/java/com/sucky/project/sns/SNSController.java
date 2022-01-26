package com.sucky.project.sns;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SNSController {
	
	
	@GetMapping("/user/mainView")
	public String mainView() {
		return "user/loginView";
	}
	
	
}
