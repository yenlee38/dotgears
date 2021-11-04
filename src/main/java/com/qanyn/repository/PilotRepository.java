package com.qanyn.repository;

import com.qanyn.model.Pilot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PilotRepository extends JpaRepository<Pilot, Integer> {

    @Query(value = "select p from Pilot p where p.post_id = :post_id")
    List<Pilot> getAllByPostId(@Param("post_id") int post_id);
}
