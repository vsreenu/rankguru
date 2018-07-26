/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import com.sree.tali.buscomp.ShowArticleBusComp;
/*    */ import com.sree.tali.buscomp.ShowArticleBusCompImpl;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
/*    */ import com.sree.tali.plugin.HibernatePlugin;
         import com.sree.tali.pojo.ThornamPojo;
/*    */ import com.sree.tali.pojo.UploadImagePojo;
/*    */ import java.util.List;
/*    */ import javax.servlet.ServletContext;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
import org.apache.struts.Globals;
import org.apache.struts.action.ActionErrors;
/*    */ import org.apache.struts.action.ActionForm;
/*    */ import org.apache.struts.action.ActionForward;
/*    */ import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
/*    */ import org.apache.struts.action.ActionServlet;
/*    */ import org.apache.struts.actions.DispatchAction;
/*    */ import org.hibernate.SessionFactory;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class ShowArticles
/*    */   extends DispatchAction
/*    */ {
/*    */   public ActionForward showArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 30 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 31 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 32 */     if (localSessionFactory != null) {
/* 33 */       List<UploadImagePojo> mm70 = buscomp.showTitles(localSessionFactory.openSession(), "70MM");
/* 34 */       List<UploadImagePojo> hrs24 = buscomp.showTitles(localSessionFactory.openSession(), "24HRS");
/* 35 */       List<UploadImagePojo> atoz = buscomp.showTitles(localSessionFactory.openSession(), "ATOZ");
/* 36 */       List<UploadImagePojo> images = buscomp.showTitles(localSessionFactory.openSession(), "IMAGES");
/* 37 */       request.setAttribute("mm70", mm70);
/* 38 */       request.setAttribute("hrs24", hrs24);
/* 39 */       request.setAttribute("atoz", atoz);
/* 40 */       request.setAttribute("images", images);
/*    */     }
/* 42 */     return mapping.findForward("homepage");
/*    */   }
/*    */   


/*    */   public ActionForward showThoranam(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 30 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 31 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 32 */     if (localSessionFactory != null) {
/* 33 */       List<ThoranamDataPojo> thoranamTitles = buscomp.showThoranamTitles(localSessionFactory.openSession(), "IMAGES");
/* 37 */       request.setAttribute("thoranamTitles", thoranamTitles);
/*    */     }
/* 42 */     return mapping.findForward("thoranam");
/*    */   }
           public ActionForward addThoranamPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 30 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 31 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 32 */     validate(request, response);
/* 42 */     return mapping.findForward("thoranamPage");
/*    */   }
           public ActionForward addThoranam(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
             ActionErrors errors = new ActionErrors();
/* 30 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
             ThornamPojo thoranampojo = (ThornamPojo)form;
             System.out.println(thoranampojo.getTitle());
             if(thoranampojo.getTitle()==null || "".equalsIgnoreCase(thoranampojo.getTitle()))
                 errors.add( "failure" , new ActionMessage("thoranam.title"));
             if(thoranampojo.getUrl()==null || "".equalsIgnoreCase(thoranampojo.getUrl()))
                 errors.add( "failure" , new ActionMessage("thoranam.link")); 
             if(validate(request, response)){
             if(errors.size()==0){
/* 31 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 32 */     if (localSessionFactory != null) {
               System.out.println("---------"+thoranampojo.getTitle());
               thoranampojo.setStatus("I");
               List<String> websites = (List<String>)request.getSession().getAttribute("websites");
               for (String website : websites) {
                 if(thoranampojo.getUrl().contains(website))
                 {
                     thoranampojo.setStatus("A");
                 }
                }
/* 33 */       buscomp.addThoranam(localSessionFactory.openSession(), thoranampojo);
                thoranampojo.setTitle("");
                thoranampojo.setUrl("");
                thoranampojo.setCaptcha("");
               errors.add( "sucess" , new ActionMessage("thoranam.success"));
/*    */     }
             }}
             else{              
                 errors.add( "failure" , new ActionMessage("thoranam.invalid"));
             }
        
             saveErrors(request, errors);
             
            
            
/* 42 */     return mapping.findForward("thoranamPage");
/*    */   }
           
           public ActionForward addThoranam1(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
               
               request.setCharacterEncoding("UTF8"); 
               response.setCharacterEncoding("UTF8"); 

              
             ActionErrors errors = new ActionErrors();
/* 30 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
             ThornamPojo thoranampojo = (ThornamPojo)form;
             System.out.println(thoranampojo.getTitle());
             if(thoranampojo.getTitle()==null || "".equalsIgnoreCase(thoranampojo.getTitle()))
                 errors.add( "failure" , new ActionMessage("thoranam.title"));
             if(thoranampojo.getUrl()==null || "".equalsIgnoreCase(thoranampojo.getUrl()))
                 errors.add( "failure" , new ActionMessage("thoranam.link")); 
             if(validate(request, response)){
             if(errors.size()==0){
/* 31 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 32 */     if (localSessionFactory != null) {
               System.out.println("---------"+thoranampojo.getTitle());
               thoranampojo.setStatus("I");
               List<String> websites = (List<String>)request.getSession().getAttribute("websites");
               for (String website : websites) {
                 if(thoranampojo.getUrl().contains(website))
                 {
                     thoranampojo.setStatus("A");
                 }
                }
/* 33 */       buscomp.addThoranam(localSessionFactory.openSession(), thoranampojo);
               errors.add( "sucess" , new ActionMessage("thoranam.success"));
/*    */     }
             }}
             else{              
                 errors.add( "failure" , new ActionMessage("thoranam.invalid"));
             }
        
             saveErrors(request, errors);
             //thoranampojo.setTitle("");
             //thoranampojo.setUrl("");
             //thoranampojo.setCaptcha("");
              request.setCharacterEncoding("UTF8"); 
               response.setCharacterEncoding("UTF8"); 
            
/* 42 */     return mapping.findForward("thoranamPage1");
/*    */   }
/*    */ 
/*    */   public ActionForward displayArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 49 */     String articleType = request.getParameter("articleName");
/* 50 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 51 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
             UploadImagePojo uploadhomeimage = buscomp.showArticle(localSessionFactory.openSession(), articleType);
/* 53 */     List<UploadImagePojo> reltedArticles = buscomp.showRelatedArticle(localSessionFactory.openSession(), uploadhomeimage);
/* 54 */     List<UploadImagePojo> recentArticles = buscomp.showRecentArticle(localSessionFactory.openSession(), uploadhomeimage);
/* 55 */     List<UploadImagePojo> mostViewedArticles = buscomp.showMostViewedArticle(localSessionFactory.openSession(), uploadhomeimage);
/* 56 */     request.setAttribute("uploadhomeimage", uploadhomeimage);
/* 57 */     request.setAttribute("reltedArticles", reltedArticles);
/* 58 */     request.setAttribute("recentArticles", recentArticles);
/* 59 */     request.setAttribute("mostViewedArticles", mostViewedArticles);
/* 60 */     return mapping.findForward("commonpage");
/*    */   }
/*    */   
/*    */   public ActionForward displayTitles(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 66 */     String articleType = request.getParameter("articleType");
/* 67 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 68 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 69 */     List<UploadImagePojo> homearticles = buscomp.showTitles(localSessionFactory.openSession(), articleType);
/* 70 */     request.setAttribute("homearticles", homearticles);
/* 71 */     return mapping.findForward("titlespage");
/*    */   }
/*    */ 
          public boolean validate(HttpServletRequest request, HttpServletResponse response)
/*    */     throws Exception
/*    */   {
/* 66 */      if ("POST".equals(request.getMethod())) {
              String sessionToken = CaptchaServlet.getToken(request.getSession());
                String requestToken = request.getParameter("captcha");
                if(sessionToken != null && sessionToken.equals(requestToken))
                {
                    //System.out.println("success");
                    CaptchaServlet.generateToken(request.getSession());
                    return true ;
                }
              } 
              CaptchaServlet.generateToken(request.getSession());
              return false;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\ShowArticles.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */