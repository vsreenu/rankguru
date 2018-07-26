/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import com.sree.tali.buscomp.AdminBusComp;
/*    */ import com.sree.tali.buscomp.AdminBusCompImpl;
/*    */ import com.sree.tali.plugin.HibernatePlugin;
/*    */ import com.sree.tali.pojo.AdminHomepojo;
/*    */ import javax.servlet.ServletContext;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import org.apache.struts.action.ActionForm;
/*    */ import org.apache.struts.action.ActionForward;
/*    */ import org.apache.struts.action.ActionMapping;
/*    */ import org.apache.struts.action.ActionServlet;
/*    */ import org.apache.struts.actions.DispatchAction;
/*    */ import org.hibernate.SessionFactory;
/*    */ 
/*    */ public class UploadHomeAction
/*    */   extends DispatchAction
/*    */ {
/* 20 */   AdminBusComp buscomp = new AdminBusCompImpl();
/*    */   
/*    */   public ActionForward uploadHome(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
/*    */     throws Exception
/*    */   {
/* 25 */     AdminHomepojo localAdminHomepojo = (AdminHomepojo)paramActionForm;
/* 26 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 27 */     localAdminHomepojo.setFilPath(getServlet().getServletContext().getRealPath("/") + localAdminHomepojo.getUploadType().toUpperCase() + "/" + localAdminHomepojo.getFolderName());
/* 28 */     this.buscomp.UploadHomeAction(localAdminHomepojo, localSessionFactory.openSession());
/* 29 */     return paramActionMapping.findForward("welcome");
/*    */   }
/*    */   
/*    */   public ActionForward uploadHomeImages(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
/*    */     throws Exception
/*    */   {
/* 35 */     AdminHomepojo localAdminHomepojo = (AdminHomepojo)paramActionForm;
/* 36 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 37 */     localAdminHomepojo.setFilPath(getServlet().getServletContext().getRealPath("/") + localAdminHomepojo.getUploadType().toUpperCase() + "/" + localAdminHomepojo.getFolderName());
/* 38 */     this.buscomp.UploadHomeAction(localAdminHomepojo, localSessionFactory.openSession());
/* 39 */     return paramActionMapping.findForward("welcome");
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\UploadHomeAction.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */