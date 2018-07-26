/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import com.sree.tali.buscomp.DisplayBusComp;
/*    */ import com.sree.tali.buscomp.DisplayBusCompImpl;
/*    */ import com.sree.tali.plugin.HibernatePlugin;
/*    */ import com.sree.tali.pojo.LoginForm;
/*    */ import java.util.List;
/*    */ import javax.servlet.ServletContext;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.apache.struts.action.ActionForm;
/*    */ import org.apache.struts.action.ActionForward;
/*    */ import org.apache.struts.action.ActionMapping;
/*    */ import org.apache.struts.action.ActionServlet;
/*    */ import org.apache.struts.actions.DispatchAction;
/*    */ import org.hibernate.SessionFactory;
/*    */ 
/*    */ public class LoginAction
/*    */   extends DispatchAction
/*    */ {
/*    */   public ActionForward execute(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse) throws Exception
/*    */   {
/* 24 */     LoginForm loginform = (LoginForm)paramActionForm;
/* 25 */     DisplayBusComp localDisplayBusCompImpl = new DisplayBusCompImpl();
/* 26 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 27 */     //if (localDisplayBusCompImpl.AuthenticateIp(localSessionFactory.openSession(), paramHttpServletRequest.getRemoteAddr())) {
/* 28 */       boolean isValid = localDisplayBusCompImpl.Authenticate(localSessionFactory.openSession(), loginform);
/* 29 */       if (isValid)
/*    */       {
/* 31 */         List<String> userRolesList = new UploadImages().getRolesForUser(loginform.getJ_username(), localSessionFactory.openSession());
/* 32 */         paramHttpServletRequest.getSession().setAttribute("userRolesList", userRolesList);
/* 33 */         paramHttpServletRequest.getSession().setAttribute("loginform", loginform);
/* 34 */         return paramActionMapping.findForward("adminhomepage");
/*    */       }
/*    */       
/* 37 */      // return paramActionMapping.findForward("adminloginpage");
/*    */    // }
/*    */     
/* 40 */     return paramActionMapping.findForward("adminloginpage");
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\LoginAction.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */