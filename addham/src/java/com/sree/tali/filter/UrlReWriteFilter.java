/*    */ package com.sree.tali.filter;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.util.List;
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
/*    */ public class UrlReWriteFilter
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
/*    */ 
/*    */   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
/*    */     throws IOException, ServletException
/*    */   {
/* 33 */     HttpServletRequest httpReq = (HttpServletRequest)request;
/* 34 */     HttpServletResponse httpResp = (HttpServletResponse)response;
/* 35 */     String uri = httpReq.getRequestURI();
/* 36 */     if ((uri.length() > 0) && (uri.charAt(uri.length() - 1) == '/')) {
/* 37 */       uri = uri.substring(0, uri.length() - 1);
/*    */     }
/* 39 */     List<String> articleTypes = (List)this.application.getAttribute("articleTypes");
/*    */     
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/* 50 */     if ((!uri.contains("/admin/")) && (!uri.contains("/ADMIN/")))
/*    */     {
/* 52 */       String article = uri.substring(uri.lastIndexOf("/") + 1);
/* 53 */       if (articleTypes.contains(article))
/*    */       {
/* 55 */         String forwardUrl = "/showarticles.do?method=displayTitles&&articleType=" + uri.substring(uri.lastIndexOf("/") + 1);
/* 56 */         request.getRequestDispatcher(forwardUrl).forward(request, response);
/*    */       }
/*    */       else
/*    */       {
/* 60 */         String forwardUrl = "/showarticles.do?method=displayArticle&&articleName=" + uri.substring(uri.lastIndexOf("/") + 1);
/* 61 */         request.getRequestDispatcher(forwardUrl).forward(request, response);
/*    */       }
/*    */     }
/*    */     else {
/* 65 */       chain.doFilter(request, response);
/*    */     }
/*    */   }
/*    */   
/*    */   public void destroy() {}
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\filter\UrlReWriteFilter.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */