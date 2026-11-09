package com.mypokedex.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.mypokedex.api.pokemon", "com.mypokedex.api.login"})
public class MypokedexApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(MypokedexApiApplication.class, args);
	}
}
