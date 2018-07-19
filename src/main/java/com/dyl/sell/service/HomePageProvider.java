package com.dyl.sell.service;

import com.dyl.sell.domain.CharactorAndHomePage;
import com.dyl.sell.repository.CharactorAndHomePageRepository;
import com.dyl.sell.repository.UserRepository;

import java.util.ArrayList;
import java.util.List;

/**
 * @author tldyl
 * @since 2018-7-19
 *
 * 根据用户角色返回对应的主页
 */
public class HomePageProvider {
    public static String getHomePage(String username, UserRepository userRepository, CharactorAndHomePageRepository charactorAndHomePageRepository) {
        String[] charactors = userRepository.findByUsername(username).getCharactor().split(",");
        List<String> homePages = new ArrayList<>();
        List<Integer> pageWeights = new ArrayList<>();
        for (String charactor : charactors) {
            CharactorAndHomePage homePage = charactorAndHomePageRepository.findByCharactor(charactor);
            homePages.add(homePage.getHomePage());
            pageWeights.add(homePage.getPageWeight());
        }
        String returnPage = "";
        int maxValue = Integer.MIN_VALUE;
        for (Integer pageWeight : pageWeights) {
            if (pageWeight > maxValue) {
                maxValue = pageWeight;
                returnPage = homePages.get(pageWeights.indexOf(pageWeight));
            }
        }
        return returnPage;
    }
}
