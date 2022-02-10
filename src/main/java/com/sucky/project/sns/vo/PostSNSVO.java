package com.sucky.project.sns.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sucky.project.common.FileManagerService;
import com.sucky.project.sns.dao.PostSNSDAO;

@Service
public class PostSNSVO {
	
	@Autowired
	private PostSNSDAO postSNSDAO;
	
	public int addPost(int userId, String userName, String content, MultipartFile file) {
		
		String filePath = FileManagerService.saveFile(userId, file);
		
		return postSNSDAO.insertPost(userId, userName, content, filePath);
	}
}
