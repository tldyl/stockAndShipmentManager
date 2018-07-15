package com.dyl.sell.controller;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class UserControllerTest {
    public PasswordEncoder encoder = new BCryptPasswordEncoder();
    @Test
    public void encoderTest() {
        System.out.println(encoder.encode("123456"));
    }
}