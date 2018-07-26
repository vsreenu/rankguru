/*     */ package com.sree.tali.filter;
/*     */ 
/*     */ import com.sree.tali.buscomp.DisplayBusComp;
/*     */ import com.sree.tali.pojo.LoginForm;
/*     */ import java.sql.Connection;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.Statement;
/*     */ import java.util.List;
/*     */ import javax.servlet.FilterChain;
/*     */ import javax.servlet.FilterConfig;
/*     */ import javax.servlet.RequestDispatcher;
/*     */ import javax.servlet.ServletContext;
/*     */ import javax.servlet.ServletException;
/*     */ import javax.servlet.ServletRequest;
/*     */ import javax.servlet.ServletResponse;
/*     */ import javax.servlet.http.HttpServletRequest;
/*     */ import javax.servlet.http.HttpServletResponse;
/*     */ import javax.servlet.http.HttpSession;
/*     */ import org.hibernate.Session;
/*     */ import org.hibernate.SessionFactory;
/*     */ import org.hibernate.internal.SessionImpl;
/*     */ 
/*     */ public class LoginFilter implements javax.servlet.Filter
/*     */ {
/*  25 */   private ServletContext application = null;
/*     */   
/*     */   public void init(FilterConfig config) throws ServletException
/*     */   {
/*  29 */     this.application = config.getServletContext();
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
/*     */     throws java.io.IOException, ServletException
/*     */   {
/*  37 */     HttpServletRequest httpReq = (HttpServletRequest)request;
/*  38 */     HttpServletResponse httpResp = (HttpServletResponse)response;
/*     */     
/*     */ 
/*     */ 
/*  42 */     String ipAddress = request.getRemoteAddr();
/*  43 */     SessionFactory localSessionFactory = null;
/*     */     
/*     */ 
/*  46 */     System.out.println("IP " + ipAddress);

/*  47 */     boolean isValid = false;
/*  48 */     LoginForm loginform = (LoginForm)httpReq.getSession().getAttribute("loginform");
/*  49 */     if (loginform != null) {
/*  50 */       DisplayBusComp localDisplayBusCompImpl = new com.sree.tali.buscomp.DisplayBusCompImpl();
/*  51 */       localSessionFactory = (SessionFactory)this.application.getAttribute(com.sree.tali.plugin.HibernatePlugin.KEY_NAME);
/*     */         System.out.println("IP " + localSessionFactory);
/*     */         System.out.println("IP " + localSessionFactory.openSession());

/*  53 */       //if (localDisplayBusCompImpl.AuthenticateIp(localSessionFactory.openSession(), request.getRemoteAddr())) {
/*  54 */         isValid = localDisplayBusCompImpl.Authenticate(localSessionFactory.openSession(), loginform);
/*     */       //}
/*     */     }
/*     */     
/*     */ 
/*  59 */     if (!isValid) {
/*  60 */       request.getRequestDispatcher("/SreeLogin.jsp").forward(request, response);
/*     */     }
/*     */     else
/*     */     {
/*  64 */       List<String> rolesList = getRolesForUser(loginform.getJ_username(), localSessionFactory.openSession());
/*  65 */       String uri = httpReq.getParameter("method");
/*     */       
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*  76 */       if ((!rolesList.contains("ADMIN")) && 
/*  77 */         (!uri.toUpperCase().contains("uploadImagePage".toUpperCase())) && 
/*  78 */         (!uri.toUpperCase().contains("viewarticlespage".toUpperCase())) && 
/*  79 */         (!uri.toUpperCase().contains("addimagepage".toUpperCase())) && 
/*  80 */         (!uri.toUpperCase().contains("uploadImages".toUpperCase())) && 
/*  81 */         (!uri.toUpperCase().contains("viewArticles".toUpperCase())) && 
/*  82 */         (!uri.toUpperCase().contains("getSubfoldersForImages".toUpperCase())) && 
/*  83 */         (!uri.toUpperCase().contains("addImages".toUpperCase())) && 
/*  84 */         (!uri.toUpperCase().contains("getSubfolders".toUpperCase())))
/*     */       {
/*  86 */         httpReq.getSession().invalidate();
/*  87 */         request.getRequestDispatcher("/SreeLogin.jsp").forward(request, response);
/*     */       }
/*     */       else {
/*  90 */         chain.doFilter(request, response);
/*     */       }
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public void destroy() {}
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public List<String> getRolesForUser(String userName, Session session)
/*     */   {
/* 105 */     List<String> userRolesList = new java.util.ArrayList<String>();
/* 106 */     Connection localConnection = null;
/*     */     
/*     */ 
/*     */     try
/*     */     {
/* 111 */       localConnection = ((SessionImpl)session).connection();
/* 112 */       String qry = "select distinct ru.role_name from role_user ru  where  ru.user_name = '" + userName.trim() + "'";
/* 113 */       Statement localStatement = localConnection.createStatement();
/* 114 */       ResultSet localResultSet = localStatement.executeQuery(qry.toUpperCase());
/* 115 */       while (localResultSet.next())
/*     */       {
/* 117 */         userRolesList.add(localResultSet.getString(1).toUpperCase());
/*     */       }
/*     */       
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/* 136 */       return userRolesList;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 122 */       localException.printStackTrace();
/*     */     }
/*     */     finally {
/* 125 */       if (localConnection != null) {
/*     */         try {
/* 127 */           localConnection.close();
/*     */         }
/*     */         catch (Exception ex)
/*     */         {
/* 131 */           ex.printStackTrace();
/*     */         }
/*     */       }
/*     */     }
            return userRolesList;
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\filter\LoginFilter.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */