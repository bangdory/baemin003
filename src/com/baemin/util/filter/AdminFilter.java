package com.baemin.util.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

@WebFilter("/admin/*")
public class AdminFilter implements Filter {

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        System.out.println("필터!!");

        HttpSession session = ((HttpServletRequest) request).getSession();
        if (session.getAttribute("no") == null || session.getAttribute("grade") == null) {
            // --- 비로그인 상태
            ((HttpServletResponse) response).sendRedirect("/baemin003/index.html");

        } else if (Integer.parseInt(session.getAttribute("grade") + "") == 1) {
            // --- 일반회원 로그인 상태
            ((HttpServletResponse) response).sendRedirect("/baemin003/baemin/Main.do");

        } else if (Integer.parseInt(session.getAttribute("grade") + "") == 2) {
            // --- 사업장 회원 로그인 상태
            ((HttpServletResponse) response).sendRedirect("/baemin003/shop/Main.do");

        } else if (Integer.parseInt(session.getAttribute("grade") + "") == 3) {
            // --- 관리자 로그인 상태
            // ((HttpServletResponse) response).sendRedirect("/baemin003/admin/Main.do");
            chain.doFilter(request, response);

        }
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }

}