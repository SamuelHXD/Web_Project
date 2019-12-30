package com.swun.springmv;

import com.swun.springmv.dao.UserRepository;
import com.swun.springmv.entity.UserEntity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Optional;

@SpringBootTest
class SpringMvApplicationTests {

    @Autowired
    UserRepository userRepository;

    @Test
    void contextLoads() {
        UserEntity byId = userRepository.findById(1).orElse(null);
        System.out.println(byId.getFirstName());
    }

}
