package com.qanyn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Pilot {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private int post_id;
    private String content;
    private String image_url;
    private Date created_at;
    private Date updated_at;

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public int getId() {
        return id;
    }

    public String getPathThumbnail() {
        return "/thumbnail-post/pilot/" + this.post_id + "/" + this.getImage_url();
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public Pilot() {
    }

    public Pilot(int post_id, String content, String image_url) {
        this.post_id = post_id;
        this.content = content;
        this.image_url = image_url;
    }

    public Pilot(int id, int post_id, String content, Date created_at, Date updated_at) {
        this.id = id;
        this.post_id = post_id;
        this.content = content;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Pilot(int post_id, String content) {
        this.post_id = post_id;
        this.content = content;
    }
}
