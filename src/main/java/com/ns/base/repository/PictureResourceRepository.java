package com.ns.base.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ns.base.domain.PictureResource;

public interface PictureResourceRepository extends JpaRepository<PictureResource, Long>{

	@Query("SELECT u FROM PictureResource u WHERE u.resourceId = :resourceId and u.resourceName = :resourceName")
	List<PictureResource> findByResourceIdAndResourceName(@Param("resourceName") String resourceName, @Param("resourceId") Long resourceId);
}
