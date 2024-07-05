package com.scan.pass.repository;

import com.scan.pass.bean.Stop;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StopRepository extends JpaRepository<Stop, Long> {
	
}