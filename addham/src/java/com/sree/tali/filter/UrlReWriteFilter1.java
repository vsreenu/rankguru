/*    */ package com.sree.tali.filter;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import javax.servlet.Filter;
/*    */ import javax.servlet.FilterChain;
/*    */ import javax.servlet.FilterConfig;
/*    */ import javax.servlet.RequestDispatcher;
/*    */ import javax.servlet.ServletContext;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.ServletRequest;
/*    */ import javax.servlet.ServletResponse;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ 
/*    */ 
/*    */ 
/*    */ public class UrlReWriteFilter1
/*    */   implements Filter
/*    */ {
/* 20 */   private ServletContext application = null;
/*    */   
/*    */   public void init(FilterConfig config) throws ServletException
/*    */   {
/* 24 */     this.application = config.getServletContext();
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
/*    */     throws IOException, ServletException
/*    */   {
/* 32 */     HttpServletRequest httpReq = (HttpServletRequest)request;
/* 33 */     HttpServletResponse httpResp = (HttpServletResponse)response;
/* 34 */     String uri = httpReq.getRequestURI();
/* 35 */     if (uri.toUpperCase().contains("TITLES/"))
/*    */     {
/* 37 */       String forwardUrl = "/showarticles.do?method=displayTitles&&articleType=" + uri.substring(uri.lastIndexOf("/") + 1);
/* 38 */       request.getRequestDispatcher(forwardUrl).forward(request, response);
/*    */     }
/* 40 */     else if (uri.toUpperCase().contains("USER/"))
/*    */     {
/* 42 */       String forwardUrl = "/showarticles.do?method=displayArticle&&articleName=" + uri.substring(uri.lastIndexOf("/") + 1);
/* 43 */       request.getRequestDispatcher(forwardUrl).forward(request, response);
/*    */     }
/*    */     else {
/* 46 */       chain.doFilter(request, response);
/*    */     }
/*    */   }
/*    */   
/*    */   public void destroy() {}
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\filter\UrlReWriteFilter1.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */