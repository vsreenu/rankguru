/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import com.sree.tali.dao.homepage.impl.TempDao;
/*    */ import com.sree.tali.dao.homepage.impl.TempDaoImpl;
/*    */ import com.sree.tali.hibernate.pojo.TempDataPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
/*    */ import com.sree.tali.plugin.HibernatePlugin;
/*    */ import com.sree.tali.pojo.TempPojo;
import static com.sree.tali.util.SecurityAlgo.validatePassword;
/*    */ import java.util.ArrayList;
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
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class TempArticles
/*    */   extends DispatchAction
/*    */ {
/*    */   public ActionForward tempHome(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 32 */     return mapping.findForward("temphome");
/*    */   }
/*    */   
/*    */   public ActionForward saveTemp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*    */   {
/* 37 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 38 */     String password="1000:5b42403462653065663934:5a7f33cdd7136b7194f2d4d6a2e97f9619bbee7c05ca720391a877ce36658572db7da71aa322c0d071c229dfd35d7800fb1b4229e3dfb84e0b60c37e195626a9";
       //      TempDao dao = new TempDaoImpl();
/* 39 */     TempPojo temppojo = (TempPojo)form;
/* 40 */    // TempDataPojo tempdata = new TempDataPojo();
/* 42 */    // tempdata.setTitle(temppojo.getTitle());
/* 43 */     //tempdata.setType(temppojo.getType());
/* 44 */     //dao.saveTemp(tempdata, localSessionFactory.openSession());
/* 41 */     if(temppojo!=null&&temppojo.getType()!=null&&validatePassword(temppojo.getType(),password)){
             request.getSession().setAttribute("temppassword", password);
/* 51 */     TempDao dao = new TempDaoImpl();
/* 52 */     List<ThoranamDataPojo> tempdata = new ArrayList();
             tempdata = dao.viewTemp(localSessionFactory.openSession());
/* 54 */     request.getSession().setAttribute("tempdata", tempdata);
             return mapping.findForward("tempview");
             } else{
               return mapping.findForward("temphome");
             }
/*    */   }
/*    */   
/*    */   
/*    */   public ActionForward removeTempData(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*    */   {
/* 60 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 61 */     TempDao dao = new TempDaoImpl();
/* 62 */     int id = Integer.parseInt(request.getParameter("id"));
/* 63 */     dao.removeTemp(id, localSessionFactory.openSession());
/* 64 */     return mapping.findForward("tempview");
/*    */   }
          public ActionForward activateTempData(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*    */   {
/* 60 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 61 */     TempDao dao = new TempDaoImpl();
/* 62 */     int id = Integer.parseInt(request.getParameter("id"));
/* 63 */     dao.activateTemp(id, localSessionFactory.openSession());
/* 64 */     return mapping.findForward("tempview");
/*    */   }
          
           public ActionForward inActivateTempData(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*    */   {
/* 60 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 61 */     TempDao dao = new TempDaoImpl();
/* 62 */     int id = Integer.parseInt(request.getParameter("id"));
/* 63 */     dao.inActivateTemp(id, localSessionFactory.openSession());
/* 64 */     return mapping.findForward("tempview");
/*    */   }

/*    */   
/*    */   public ActionForward viewTempArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*    */   {
/* 69 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 70 */     TempDao dao = new TempDaoImpl();
/* 71 */     TempDataPojo temp = new TempDataPojo();
/* 72 */     int id = Integer.parseInt(request.getParameter("id"));
/* 73 */     temp = dao.viewTempArticle(id, localSessionFactory.openSession());
/* 74 */     request.setAttribute("temp", temp);
/* 75 */     return mapping.findForward("viewtemparticle");
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\TempArticles.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */