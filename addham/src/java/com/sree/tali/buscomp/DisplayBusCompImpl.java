/*    */ package com.sree.tali.buscomp;
/*    */ 
/*    */ import com.sree.tali.dao.homepage.impl.IIndexDao;
/*    */ import com.sree.tali.dao.homepage.impl.IndexDao;
/*    */ import com.sree.tali.pojo.AdminHomepojo;
/*    */ import com.sree.tali.pojo.HomeList;
/*    */ import com.sree.tali.pojo.LoginForm;
/*    */ import java.util.List;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.hibernate.Session;
/*    */ 
/*    */ public class DisplayBusCompImpl
/*    */   implements DisplayBusComp
/*    */ {
/* 16 */   IIndexDao indexDao = new IndexDao();
/*    */   
/*    */ 
/*    */   public void DisplayHome(AdminHomepojo paramAdminHomepojo, Session paramSession) {}
/*    */   
/*    */ 
/*    */   public HomeList DisplayHome(Session paramSession, HttpServletRequest paramHttpServletRequest)
/*    */   {
/*    */     try
/*    */     {
/* 26 */       List localList1 = this.indexDao.AtoZList(paramSession);
/* 27 */       List localList2 = this.indexDao.Load24List(paramSession);
/* 28 */       List localList3 = this.indexDao.Load70List(paramSession);
/* 29 */       paramHttpServletRequest.getSession().setAttribute("atoz", localList1);
/* 30 */       paramHttpServletRequest.getSession().setAttribute("hrs24", localList2);
/* 31 */       paramHttpServletRequest.getSession().setAttribute("mm70", localList3);
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 35 */       localException.printStackTrace();
/*    */     }
/*    */     finally
/*    */     {
/* 39 */       if (paramSession != null) {
/* 40 */         paramSession.close();
/*    */       }
/*    */     }
/* 43 */     return null;
/*    */   }
/*    */   
/*    */ 
/*    */   public AdminHomepojo DisplayPage(Session paramSession, int paramInt)
/*    */   {
/* 49 */     AdminHomepojo localAdminHomepojo = this.indexDao.DisplayPage(paramSession, paramInt);
/* 50 */     return localAdminHomepojo;
/*    */   }
/*    */   
/*    */ 
/*    */   public boolean Authenticate(Session paramSession, LoginForm form)
/*    */   {
/* 56 */     boolean isValidUser = this.indexDao.Authenticate(paramSession, form);
/* 57 */     return isValidUser;
/*    */   }
/*    */   
/*    */   public boolean AuthenticateIp(Session paramSession, String ip)
/*    */   {
/* 62 */     boolean isValidUser = this.indexDao.AuthenticateIp(paramSession, ip);
/* 63 */     return isValidUser;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\DisplayBusCompImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */