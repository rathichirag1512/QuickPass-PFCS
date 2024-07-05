package com.scan.pass.repository;

import com.scan.pass.bean.User;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
	
	Optional<User> findByQrCode(byte[] qrCode);
}


