package com.qanyn.service;

import com.qanyn.model.ScreenShots;
import com.qanyn.repository.ScreenShotsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ScreenShotsService {

    @Autowired
    public ScreenShotsRepository screenShotsRepository;

    public void addToPost(String post_id) {
        ScreenShots screenShots = new ScreenShots();
        screenShots.setPost_id(post_id);
        screenShots.setCreated_at(new Date());
        screenShots.setUpdated_at(new Date());
        screenShotsRepository.save(screenShots);
    }

    public void createOne(ScreenShots screenShots) {
        screenShots.setUpdated_at(new Date());
        screenShots.setUpdated_at(new Date());
        screenShotsRepository.save(screenShots);
    }

    public void deleteOne(int id) {
        screenShotsRepository.deleteById(id);
    }

    public ScreenShots getOne(int id) {
        return screenShotsRepository.getOne(id);
    }

    public List<ScreenShots> getAllListByPostId(String post_id) {
        return screenShotsRepository.findAllByPostId(post_id);
    }
}
