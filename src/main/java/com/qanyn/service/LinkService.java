package com.qanyn.service;

import com.qanyn.model.Link;
import com.qanyn.repository.LinkRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class LinkService {

    @Autowired
    public LinkRepository linkRepository;

    public void createLink(Link link) {
        Link linkCheck = linkRepository.getLinkByPostIdAndType(link.getPost_id(), link.getType());
        if(linkCheck!=null) {
            linkCheck.setUpdated_at(new Date());
            linkCheck.setUrl(link.getUrl());
            linkRepository.save(linkCheck);
        } else {
            link.setCreated_at(new Date());
            link.setUpdated_at(new Date());
            linkRepository.save(link);
        }
    }

    public List<Link> getLinkByPostId(String post_id) {
        return linkRepository.getLinkByPostId(post_id);
    }

    public Link getLinkByPostAndType(String post_id, String type) {
        return linkRepository.getLinkByPostIdAndType(post_id, type);
    }
}
