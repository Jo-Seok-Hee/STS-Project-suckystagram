package com.sucky.project.sns.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostSNSDAO {
	
	public int insertPost(
			@Param("userId") int userId,
			@Param("userName") String userName,
			@Param("content") String content,
			@Param("imagePath") String imagePath	
			);
}
