package com.dyl.sell.bean;

import com.dyl.sell.filter.DepartmentFilter;
import com.dyl.sell.filter.IndexFilter;
import com.dyl.sell.filter.StockFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("unchecked")
@Configuration
public class WebConfig {
    @Bean
    public FilterRegistrationBean indexFilter() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();

        IndexFilter indexFilter = new IndexFilter("IndexFilter");
        registrationBean.setFilter(indexFilter);

        List<String> urls = new ArrayList<>();
        urls.add("/index.html");
        urls.add("/");

        registrationBean.setUrlPatterns(urls);

        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean departmentFilter() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();

        DepartmentFilter departmentFilter = new DepartmentFilter("DepartmentFilter");
        registrationBean.setFilter(departmentFilter);

        List<String> urls = new ArrayList<>();
        urls.add("/department.html");

        registrationBean.setUrlPatterns(urls);

        return registrationBean;
    }

    @Bean
    public FilterRegistrationBean stockFilter() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();

        StockFilter stockFilter = new StockFilter("StockFilter");
        registrationBean.setFilter(stockFilter);

        List<String> urls = new ArrayList<>();
        urls.add("/stock.html"); //(名称暂时未定)

        registrationBean.setUrlPatterns(urls);

        return registrationBean;
    }
    //如果后面还想注册其他的filter请写在下面，不能写在同一个方法里。
}
