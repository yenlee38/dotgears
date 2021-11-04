package com.qanyn.service;

import com.qanyn.model.Guides;
import com.qanyn.repository.GuidesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GuidesService {

    @Autowired
    public GuidesRepository guidesRepository;

    public List<Guides> getAllByPostId(int id) {
        return guidesRepository.getAllByPostId(id);
    }

    public void createOne(Guides guides) {
        guides.setCreated_at(new Date());
        guides.setUpdated_at(new Date());
        guidesRepository.save(guides);
    }

    public Guides getOne(int guides_id) {
        return guidesRepository.getOne(guides_id);
    }

    public void deteleOne(int guides_id) {
        guidesRepository.deleteById(guides_id);
    }
}
