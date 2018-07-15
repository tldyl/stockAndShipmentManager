package com.dyl.sell.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * @author tldyl
 * @since 2018-6-5
 *
 * 随机字符串生成器，可以生成包含字母和数字的随机字符串
 */
public class RandomStringGenerator {
    private static final String seq1 = "abcdefghijklmnopqrstuvwxyz";
    private static final String seq2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String seq3 = "0123456789";

    /**
     *
     * @param length 指定生成字符串的长度
     * @param options 指定生成字符串的组成部分，1表示小写字母，2表示大写字母，4表示数字
     * @return 一个随机字符串
     */
    public synchronized static String generate(int length,int options) {
        List<String> seqs = new ArrayList<>();
        for (int i=8;i>=1;i=i/2) {
            if (options - i >= 0) {
                options = options - i;
                switch (i) {
                    case 1: seqs.add(seq1);break;
                    case 2: seqs.add(seq2);break;
                    case 4: seqs.add(seq3);break;
                }
            }
        }
        StringBuffer buffer = new StringBuffer();
        Random random = new Random();
        for (int i=0;i<length;i++) {
            int seqsIndex = random.nextInt(seqs.size());
            buffer.append(seqs.get(seqsIndex).charAt(random.nextInt(seqs.get(seqsIndex).length())));
        }
        return buffer.toString();
    }

}