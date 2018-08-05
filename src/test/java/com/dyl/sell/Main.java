package com.dyl.sell;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Scanner;

public class Main{
    public static void main(String args[]) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int k = scanner.nextInt();
        int l = scanner.nextInt();
        int r = scanner.nextInt();
        ArrayList<String> strs = new ArrayList<String>();
        for (int i=0;i<n;i++) {
            strs.add(scanner.next());
        }
        HashSet<String> substrings = new HashSet<String>();
        for (String str : strs) {
            for (int i=0;i<str.length();i++) { //子串长度
                for (int j=0;j<str.length()-i;j++) { //子串起始位置
                    substrings.add(substr(str,j,i+j));
                }
            }
        }
        ArrayList<Double> resultSet = new ArrayList<Double>();
        for (String str : substrings) {
            resultSet.add(charm(str,k));
        }
        int ctr = 0;
        for (double a : resultSet) {
            if (a >= l && a <= r) {
                ctr++;
            }
        }
        System.out.println(ctr);
    }

    private static String substr(String str,int beginPos,int endPos) {
        return str.substring(beginPos, endPos + 1);
    }

    private static String prefix(String str, int k) {
        return substr(str,0,k - 1);
    }

    private static double value(String str) {
        double sum = 0.0;
        for (int i=0;i<str.length();i++) {
            sum = sum + ((str.charAt(i) - 97) * Math.pow(26,str.length()-1-i));
        }
        return sum;
    }

    private static double charm(String str,int k) {
        if (str.length() <= k) {
            return value(str) % 1000000007;
        } else {
            return (value(prefix(str, k)) + str.length() - k) % 1000000007;
        }
    }
}
