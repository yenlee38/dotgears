package com.qanyn.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Pilots {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String post_id;
    private String content;
    private String title;
    private String thumbnail_url;
    private String full_name;
    private String zodiac_sign;
    private String hobbies;
    private String blood_type;
    private Date created_at;
    private Date updated_at;

    public int getId() {
        return id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getPathThumbnail() {
        return "/thumbnail-post/pilots/"  + this.post_id + "/" + this.getThumbnail_url();
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail_url() {
        return thumbnail_url;
    }

    public void setThumbnail_url(String thumbnail_url) {
        this.thumbnail_url = thumbnail_url;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getZodiac_sign() {
        return zodiac_sign;
    }

    public void setZodiac_sign(String zodiac_sign) {
        this.zodiac_sign = zodiac_sign;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getBlood_type() {
        return blood_type;
    }

    public void setBlood_type(String blood_type) {
        this.blood_type = blood_type;
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

    public Pilots() {
    }

    public Pilots(String post_id, String title, String thumbnail_url, String full_name, String zodiac_sign, String hobbies) {
        this.post_id = post_id;
        this.title = title;
        this.thumbnail_url = thumbnail_url;
        this.full_name = full_name;
        this.zodiac_sign = zodiac_sign;
        this.hobbies = hobbies;
    }

    public Pilots(String post_id, String content, String title, String thumbnail_url, String full_name, String zodiac_sign, String hobbies, String blood_type, Date created_at, Date updated_at) {
        this.post_id = post_id;
        this.content = content;
        this.title = title;
        this.thumbnail_url = thumbnail_url;
        this.full_name = full_name;
        this.zodiac_sign = zodiac_sign;
        this.hobbies = hobbies;
        this.blood_type = blood_type;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Pilots(int id, String post_id, String title, String thumbnail_url, String full_name, String zodiac_sign, String hobbies, String blood_type, Date created_at, Date updated_at) {
        this.id = id;
        this.post_id = post_id;
        this.title = title;
        this.thumbnail_url = thumbnail_url;
        this.full_name = full_name;
        this.zodiac_sign = zodiac_sign;
        this.hobbies = hobbies;
        this.blood_type = blood_type;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }

    public Pilots(int id, String post_id, String content, String title, String thumbnail_url, String full_name, String zodiac_sign, String hobbies, String blood_type, Date created_at, Date updated_at) {
        this.id = id;
        this.post_id = post_id;
        this.content = content;
        this.title = title;
        this.thumbnail_url = thumbnail_url;
        this.full_name = full_name;
        this.zodiac_sign = zodiac_sign;
        this.hobbies = hobbies;
        this.blood_type = blood_type;
        this.created_at = created_at;
        this.updated_at = updated_at;
    }
}
