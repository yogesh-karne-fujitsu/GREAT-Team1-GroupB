package com.Spring.TrainingStatusApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;


@ComponentScan("com.Spring.TrainingStatusApp")
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })

public class TrainingStatusAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrainingStatusAppApplication.class, args);
	}

}
