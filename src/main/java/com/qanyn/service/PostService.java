package com.qanyn.service;

import com.qanyn.model.Post;
import com.qanyn.repository.AdminRepository;
import com.qanyn.repository.PostRepository;
import com.qanyn.utils.Translator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PostService {

    @Autowired
    public PostRepository postRepository;

    @Autowired
    public AdminRepository adminRepository;

    @Autowired
    public AdminService adminService;

    public Post getPostById(String id) {
        return postRepository.getOne(id);
    }

    public List<Post> getListPostForAdminHome() {
        String adminLogin = adminService.getUsernameLoginCurrent();
        if (adminLogin.equals("admin")) {
            return postRepository.findAll();
        }
        return postRepository.findAllBySubAdminLogin(adminLogin);
    }

    public List<Post> getListForHome() {
        return postRepository.getAllByStatus("PUBLISHED");
    }


    public void createContentPost(Post post) {
        String adminLogin = adminService.getUsernameLoginCurrent();
        List<Post> lPost = postRepository.searchByTitle(post.getTitle());
        String post_id = Translator.changeTitleToId(post.getTitle());
        if(lPost.size() > 0)
            post_id = post_id + lPost.size(); //handle same title
        post.setId(post_id);
        post.setCreated_at(new Date());
        post.setUpdated_at(new Date());
        post.setCreated_by(adminLogin);
        if(adminLogin.equals("admin")) {
            post.setStatus("PUBLISHED");
        } else post.setStatus("PENDDING");

        postRepository.save(post);
    }

    public void updateStatusPost(String id, String status) {
        Post post = postRepository.getOne(id);
        post.setStatus(status);
        post.setUpdated_at(new Date());
        postRepository.save(post);
    }

    public void updateContentPost(Post postNew) {
        Post post = postRepository.getOne(postNew.getId());
        post.setTitle(postNew.getTitle());
        post.setContent(postNew.getContent());
        post.setGenre(postNew.getGenre());
        post.setDeveloper(postNew.getDeveloper());
        post.setRate(postNew.getRate());
        post.setRelease_date(postNew.getRelease_date());
        post.setUpdated_at(new Date());
        postRepository.save(post);
    }


    public List<Post> searchByTitle(String title) {
        String adminLogin = adminService.getUsernameLoginCurrent();
        if(adminLogin.equals("admin")) {
            return postRepository.searchByTitle(title);
        }
        return searchByTitleAndAdmin(title, adminLogin);
    }

    public List<Post> searchByTitleAndAdmin(String title, String username) {
        return postRepository.searchByTitleAndUsername(title, username);
    }

    public void uploadThumbnail(String post_id, String thumbnail_id) {
        Post post = postRepository.getOne(post_id);
        post.setThumbnail_url(thumbnail_id);
        postRepository.save(post);
    }

    public void deletePost(String id) {
        postRepository.deleteById(id);
    }

}
