package com.qanyn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Guides {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String post_id;
    private String image_url;
    private Date created_at;
    private Date updated_at;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPost_id() {
        return post_id;
    }

    public void setPost_id(String post_id) {
        this.post_id = post_id;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
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

    public String getPathThumbnail() {
        return "/thumbnail-post/guides/" + this.post_id + "/" + this.getImage_url();
    }

    public Guides() {
    }

    public Guides(String post_id, String image_url) {
        this.post_id = post_id;
        this.image_url = image_url;
    }

    public Guides(int id, String post_id, String image_url, Date created_at, Date updated_at) {
        this.id = id;
        this.post_id = post_id;
        this.image_url = image_url;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }
}
