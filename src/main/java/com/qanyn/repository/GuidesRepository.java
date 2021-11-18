package com.qanyn.repository;

import com.qanyn.model.Guides;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GuidesRepository extends JpaRepository<Guides, Integer> {

    @Query (value = "select g from Guides g where g.post_id = :post_id")
    List<Guides> getAllByPostId(@Param("post_id") String post_id);
}
