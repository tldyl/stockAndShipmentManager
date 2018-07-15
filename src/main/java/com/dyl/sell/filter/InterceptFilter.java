package com.dyl.sell.filter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import java.io.IOException;

/**
 * 这个过滤器只起到拦截url的作用，目的是防止有人未通过登录验证直接访问页面
 * 该类过滤器均需在bean.WebConfig中初始化。
 */
public class InterceptFilter implements Filter {
    private static final Logger logger = LoggerFactory.getLogger(InterceptFilter.class);
    private String msg;

    public InterceptFilter(String msg) {
        this.msg = msg;
    }

    @Override
    public void init(FilterConfig arg) throws ServletException {
        logger.info("Initializing intercept filter...");
    }
    @Override
    public void doFilter(ServletRequest req, ServletResponse res,FilterChain fChain)
            throws IOException,ServletException {
        logger.info(msg);
        req.getRequestDispatcher("/403.html").forward(req, res);
    }
    @Override
    public void destroy() {
        logger.info("Destroy intercept filter.");
    }
}
