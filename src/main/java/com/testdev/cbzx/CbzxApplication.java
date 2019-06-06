package com.testdev.cbzx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.testdev.cbzx.dao")
@SpringBootApplication
public class CbzxApplication {

    public static void main(String[] args) {
        SpringApplication.run(CbzxApplication.class, args);
    }

}
