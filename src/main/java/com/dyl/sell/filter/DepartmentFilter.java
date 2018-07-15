package com.dyl.sell.filter;

/**
 * @author tldyl
 * @since 2018-7-8
 *
 * 这个过滤器只拦截/department.html这个路径，目的是防止有人未通过登录验证直接访问部门管理页面
 */
public class DepartmentFilter extends InterceptFilter {
    public DepartmentFilter(String msg) {
        super(msg);
    }
}
