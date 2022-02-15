package com.sucky.project.sns.like.vo;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sucky.project.sns.like.dao.LikeDAO;

@Service
public class LikeVO {
	
	
	@Autowired
	private LikeDAO likeDAO;
	
	
	public int addLike(int postId,int userId) {
		
		return likeDAO.insertLike(postId, userId);
	}
	
	//postId로 좋아요 개수 조회
	public int getLikeCount(int postId) {
		return likeDAO.selectLikeCount(postId);
	}
	
	//postId와 userId 로 좋아요 여부 확인
	public boolean isLike(int postId, int userId) {
		int count = likeDAO.selectLikeCountByUserId(postId, userId);
		
		if(count ==0) {
			return false;
		} else {
			return true;
		}
		
		//return ~(likeDAO.S
	
	}
}
