package com.sucky.project.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.sucky.project.common.FileManagerService;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer{
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")// 브라우저에서 접근하도록 하는 path
		.addResourceLocations("file:///"+ FileManagerService.FILE_UPLOAD_PATH);
	}
	
}
