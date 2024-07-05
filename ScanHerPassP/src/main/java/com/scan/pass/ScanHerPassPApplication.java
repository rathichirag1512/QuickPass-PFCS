package com.scan.pass;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication

@EnableJpaRepositories(basePackages = "com.scan.pass.repository")
@EntityScan(basePackages = "com.scan.pass.bean")
public class ScanHerPassPApplication {

	public static void main(String[] args) {
		SpringApplication.run(ScanHerPassPApplication.class, args);
	}

}
