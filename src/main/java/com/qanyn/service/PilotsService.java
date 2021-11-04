package com.qanyn.service;

import com.qanyn.model.Pilots;
import com.qanyn.repository.PilotsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class PilotsService {

  @Autowired
    public PilotsRepository pilotsRepository;


  public void deleteOne(int id) {
      pilotsRepository.deleteById(id);
  }

  public Pilots getOne (int id) {
      return pilotsRepository.getOne(id);
  }

  public void createOne(Pilots pilots) {
      pilots.setCreated_at(new Date());
      pilots.setUpdated_at(new Date());
      pilotsRepository.save(pilots);
  }

  public void uploadThumbnail(int id,String filename) {
      Pilots pilots = pilotsRepository.getOne(id);
      pilots.setUpdated_at(new Date());
      pilots.setThumbnail_url(filename);
      pilotsRepository.save(pilots);
  }

  public void updateOne(Pilots pilots) {
      Pilots pilotsOld = pilotsRepository.getOne(pilots.getId());
      pilots.setCreated_at(pilotsOld.getCreated_at());
      pilots.setThumbnail_url(pilotsOld.getThumbnail_url());
      pilotsRepository.save(pilots);
  }

  public List<Pilots> getAllByPostId(int post_id) {
      return pilotsRepository.getAllByPostId(post_id);
  }
}
