package com.qanyn.repository;

import com.qanyn.model.Pilots;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PilotsRepository extends JpaRepository<Pilots, Integer> {

    @Query (value = "select p from Pilots p where p.post_id = :post_id")
    List<Pilots> getAllByPostId(@Param("post_id") int post_id);


}
