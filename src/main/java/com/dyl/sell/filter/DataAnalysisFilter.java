package com.dyl.sell.filter;

/**
 * @author tldyl
 * @since 2018-7-19
 *
 * 这个过滤器只拦截/analysisPage.html这个路径，目的是防止有人未通过登录验证直接访问数据分析中心页面
 */
public class DataAnalysisFilter extends InterceptFilter {
    public DataAnalysisFilter(String msg) {
        super(msg);
    }
}
