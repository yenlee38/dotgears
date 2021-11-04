package com.qanyn.repository;

import com.qanyn.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post, Integer> {

    @Query(value = "select p from Post p where p.created_by = :username")
    List<Post> findAllBySubAdminLogin(@Param("username") String username);

    @Query(value = "select p from Post p where p.title like %:title%")
    List<Post> searchByTitle(@Param("title") String title);

    @Query(value = "select p from Post p where p.title like %:title% and p.created_by = :username")
    List<Post> searchByTitleAndUsername(@Param("title") String title, @Param("username") String username);

    @Query (value = "select p from Post p where p.status = :status")
    List<Post> getAllByStatus(@Param("status") String status);

}
