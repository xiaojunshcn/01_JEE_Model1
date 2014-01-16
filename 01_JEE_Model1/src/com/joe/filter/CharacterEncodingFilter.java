package com.joe.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {
	protected String encoding = null;  
	protected FilterConfig filterConfig = null;  
//	protected boolean ignore = true;

	@Override
	public void destroy() {
		this.encoding = null;  
		this.filterConfig = null; 
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("CharacterEncodingFilter.doFilter()");
		//if (ignore || (request.getCharacterEncoding() == null)) {  
		if (request.getCharacterEncoding() == null) {
			String encoding = selectEncoding(request);  
			if (encoding != null)  
				request.setCharacterEncoding(encoding);  
		}  
		chain.doFilter(request, response);  
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;  
		this.encoding = filterConfig.getInitParameter("encoding");  
//		String value = filterConfig.getInitParameter("ignore");  
//		if (value == null)  
//			this.ignore = true;  
//		else if (value.equalsIgnoreCase("true"))  
//			this.ignore = true;  
//		else if (value.equalsIgnoreCase("yes"))  
//			this.ignore = true;  
//		else  
//			this.ignore = false; 
	}
	
	protected String selectEncoding(ServletRequest request) {  
		return (this.encoding);  
	}  
}