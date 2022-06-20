package com.techblog.entities;

public class Category {
    private int id;
    private String title;
    private String content;
    public Category() {}
    public Category(String title, String content) {
        this.title = title;
        this.content = content;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getTitle() {
        return title;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getContent() {
        return content;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
}
