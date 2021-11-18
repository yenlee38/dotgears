package com.qanyn.repository;

import com.qanyn.model.Link;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LinkRepository  extends JpaRepository<Link,  Integer> {
    @Query(value = "select l from Link l where l.post_id = :post_id and l.type = :type")
    Link getLinkByPostIdAndType(@Param("post_id") String post_id, @Param("type") String type);

    @Query(value = "select l from Link l where l.post_id =:post_id")
    List<Link> getLinkByPostId(@Param("post_id") String post_id);

}
