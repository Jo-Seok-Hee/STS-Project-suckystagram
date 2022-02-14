package com.sucky.project.sns.comment.vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.project.sns.comment.dao.CommentDAO;

@Service
public class CommentVO {
	
	@Autowired
	private CommentDAO commentDAO;
	
	public int addComment(int postId, int userId, String userName, String content) {
		return commentDAO.insertComment(postId, userId, userName, content);
	}
	
}
