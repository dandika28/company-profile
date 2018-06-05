package com.mikatama.cp.bean;

import org.springframework.web.multipart.MultipartFile;

public class OurCulture {
    private Integer id;
    private String title;
    private String content;
    private String image;
    private MultipartFile imageFile;

    public OurCulture() {
    }

    public OurCulture(Integer id, String title, String content, String image, MultipartFile imageFile) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.image = image;
        this.imageFile=imageFile;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

	public MultipartFile getMultipartFile() {
		return imageFile;
	}

	public void setMultipartFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}
    
    
}
