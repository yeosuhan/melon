package com.melon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
//@MapperScan("com.melon.repository.common")
public class MelonMainApplication {

    public static void main(String[] args) {
        SpringApplication.run(MelonMainApplication.class, args);
    }

}
