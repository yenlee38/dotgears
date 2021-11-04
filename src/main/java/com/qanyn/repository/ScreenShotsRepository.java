package com.qanyn.repository;

import com.qanyn.model.ScreenShots;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScreenShotsRepository extends JpaRepository<ScreenShots, Integer> {

    @Query(value = "select s from ScreenShots s where s.post_id = :post_id")
    List<ScreenShots> findAllByPostId(@Param("post_id") int post_id);
}
