package org.youngclown;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.core.env.Environment;

@SpringBootApplication
public class FlywayApplication {

    private static Environment env;
    public FlywayApplication(Environment env) {
        this.env = env;
    }

    public static void main(String[] args) {
        var ctx = SpringApplication.run(FlywayApplication.class, args);  // 여기서 sql 실행하다가 에러남
    }
}
