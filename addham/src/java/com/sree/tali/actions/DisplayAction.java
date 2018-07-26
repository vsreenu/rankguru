/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import com.sree.tali.plugin.HibernatePlugin;
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
/*    */ public class DisplayAction
/*    */   extends DispatchAction
/*    */ {
/*    */   public ActionForward execute(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
/*    */     throws Exception
/*    */   {
/* 20 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 21 */     return paramActionMapping.findForward("welcome");
/*    */   }
/*    */   
/*    */   public ActionForward index(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
/*    */     throws Exception
/*    */   {
/* 27 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 28 */     return paramActionMapping.findForward("welcome");
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\DisplayAction.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */