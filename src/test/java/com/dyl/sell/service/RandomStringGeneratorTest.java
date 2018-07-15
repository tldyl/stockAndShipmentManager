package com.dyl.sell.service;

import org.junit.Test;

import static org.junit.Assert.*;

public class RandomStringGeneratorTest {

    @Test
    public void generate() {
        System.out.println(RandomStringGenerator.generate(32,5));
    }
}