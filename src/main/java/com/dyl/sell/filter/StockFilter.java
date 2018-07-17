package com.dyl.sell.filter;

/**
 * @author tldyl
 * @since 2018-7-16
 *
 * 这个过滤器只拦截/stock.html(名称暂时未定)这个路径，目的是防止有人未通过登录验证直接访问进销存管理页面
 */
public class StockFilter extends InterceptFilter {
    public StockFilter(String msg) {
        super(msg);
    }
}
