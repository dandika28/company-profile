package com.mikatama.cp;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import com.mikatama.cp.filestorage.FileStorage;

@SpringBootApplication
public class CompanyProfileApplication extends SpringBootServletInitializer implements CommandLineRunner {

	@Value("${path.location.brochure.document}")
	private String pathLocationDocument;
	
	@Value("${path.location.homepage.image}")
	private String pathLocationImageHomePage;
	
	@Resource
	FileStorage fileStorage;
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application){
		return application.sources(CompanyProfileApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(CompanyProfileApplication.class, args);
	}
	
	@Override
	public void run(String... args) throws Exception {
		//fileStorage.deleteAll();
		fileStorage.init(pathLocationDocument);
		fileStorage.init(pathLocationImageHomePage);
	}
	
}
