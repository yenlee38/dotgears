package com.qanyn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String title;
    private String content;
    private String genre;
    private String rate;
    private Date release_date;
    private String developer;
    private String thumbnail_url;
    private String status; //PENDDING,DENIED, PUBLISHED, NOTPUBLISHED
    private Date created_at;
    private Date updated_at;
    private String created_by;

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public String getDeveloper() {
        return developer;
    }

    public void setDeveloper(String developer) {
        this.developer = developer;
    }

    public String getThumbnail_url() {
        return thumbnail_url;
    }

    public String getPathThumbnail() {
        return "/thumbnail-post/" + this.id + "/" +  this.getThumbnail_url();
    }

    public void setThumbnail_url(String thumbnail_url) {
        this.thumbnail_url = thumbnail_url;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public String getCreated_by() {
        return created_by;
    }

    public void setCreated_by(String created_by) {
        this.created_by = created_by;
    }

    public Post() {
    }

    public Post(String title, String content) {
        this.title = title;
        this.content = content;
    }

    public Post(int id, String title, String content) {
        this.title = title;
        this.content = content;
        this.id = id;
    }


    public Post(String title, String content, String created_by) {
        this.title = title;
        this.content = content;
        this.created_by = created_by;
    }


    public Post(int id, String title, String content, String genre, String rate, Date release_date, String developer, String thumbnail_url, String status, Date created_at, Date updated_at, String created_by) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.genre = genre;
        this.rate = rate;
        this.release_date = release_date;
        this.developer = developer;
        this.thumbnail_url = thumbnail_url;
        this.status = status;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.created_by = created_by;
    }

    public Post(String title, String content, String genre, String rate, Date release_date, String developer, String thumbnail_url) {
        this.title = title;
        this.content = content;
        this.genre = genre;
        this.rate = rate;
        this.release_date = release_date;
        this.developer = developer;
        this.thumbnail_url = thumbnail_url;
    }
}
