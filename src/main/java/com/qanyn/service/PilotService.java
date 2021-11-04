package com.qanyn.service;

import com.qanyn.model.Pilot;
import com.qanyn.repository.PilotRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PilotService {

    @Autowired
    public PilotRepository pilotRepository;

    public List<Pilot> getAllListByPostId(int post_id) {
        return pilotRepository.getAllByPostId(post_id);
    }

    public void createOne(Pilot pilot) {
        pilot.setCreated_at(new Date());
        pilot.setUpdated_at(new Date());
        pilotRepository.save(pilot);
    }

    public Pilot getOne(int id) {
        return pilotRepository.getOne(id);
    }

    public void deleteOne(int id) {
        pilotRepository.deleteById(id);
    }

}
