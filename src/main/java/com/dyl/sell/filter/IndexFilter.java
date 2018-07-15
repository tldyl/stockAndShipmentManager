package com.dyl.sell.filter;

/**
 * @author tldyl
 * @since 2018-7-7
 *
 * 这个过滤器只拦截/index.html这个路径，目的是防止有人未通过登录验证直接访问主页面
 */
public class IndexFilter extends InterceptFilter {
    public IndexFilter(String msg) {
        super(msg);
    }
}
