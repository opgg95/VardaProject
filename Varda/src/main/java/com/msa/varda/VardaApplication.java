package com.msa.varda;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
// @ComponentScan(basePackages="{com.msa.varda.product}")
public class VardaApplication {

	public static void main(String[] args) {
		SpringApplication.run(VardaApplication.class, args);
	}

}
