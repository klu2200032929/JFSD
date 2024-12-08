package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Farmer;

@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Long>{

	@Query("select f from Farmer f where f.email=?1 and f.password=?2")
	public Farmer checkfarmerlogin(String email,String password);
}
