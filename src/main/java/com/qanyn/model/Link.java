package com.qanyn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Link {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String post_id;
    private String url;
    private String type; // FACEBOOK, TWITTER, IOS, ANDROID
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public Link() {}

    public Link(int id, String post_id, String url, String type, Date created_at, Date updated_at) {
        this.id = id;
        this.post_id = post_id;
        this.url = url;
        this.type = type;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Link(String post_id, String url, String type) {
        this.post_id = post_id;
        this.url = url;
        this.type = type;
    }


}
