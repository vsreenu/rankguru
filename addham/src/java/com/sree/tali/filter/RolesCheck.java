/*    */ package com.sree.tali.filter;
/*    */ 
/*    */ import com.sree.tali.buscomp.DisplayBusComp;
/*    */ import com.sree.tali.buscomp.DisplayBusCompImpl;
/*    */ import com.sree.tali.plugin.HibernatePlugin;
/*    */ import com.sree.tali.pojo.LoginForm;
/*    */ import java.io.PrintStream;
/*    */ import javax.servlet.FilterChain;
/*    */ import javax.servlet.FilterConfig;
/*    */ import javax.servlet.ServletContext;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.ServletRequest;
/*    */ import javax.servlet.ServletResponse;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import org.hibernate.SessionFactory;
/*    */ 
/*    */ public class RolesCheck implements javax.servlet.Filter
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
/*    */     throws java.io.IOException, ServletException
/*    */   {
/* 32 */     HttpServletRequest httpReq = (HttpServletRequest)request;
/* 33 */     HttpServletResponse httpResp = (HttpServletResponse)response;
/*    */     
/*    */ 
/*    */ 
/* 37 */     String ipAddress = request.getRemoteAddr();
/*    */     
/*    */ 
/* 40 */     System.out.println("IP " + ipAddress);
/* 41 */     boolean isValid = false;
/* 42 */     LoginForm loginform = (LoginForm)httpReq.getSession().getAttribute("loginform");
/* 43 */     if (loginform != null) {
/* 44 */       DisplayBusComp localDisplayBusCompImpl = new DisplayBusCompImpl();
/* 45 */       SessionFactory localSessionFactory = (SessionFactory)this.application.getAttribute(HibernatePlugin.KEY_NAME);
/*    */       
/* 47 */       if (localDisplayBusCompImpl.AuthenticateIp(localSessionFactory.openSession(), request.getRemoteAddr())) {
/* 48 */         isValid = localDisplayBusCompImpl.Authenticate(localSessionFactory.openSession(), loginform);
/*    */       }
/*    */     }
/*    */     
/*    */ 
/* 53 */     if (!isValid) {
/* 54 */       request.getRequestDispatcher("/SreeLogin.jsp").forward(request, response);
/*    */     }
/*    */     else {
/* 57 */       chain.doFilter(request, response);
/*    */     }
/*    */   }
/*    */   
/*    */   public void destroy() {}
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\filter\RolesCheck.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */