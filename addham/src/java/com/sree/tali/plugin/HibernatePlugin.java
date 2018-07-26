/*     */ package com.sree.tali.plugin;
/*     */ 
/*     */ import com.sree.tali.buscomp.ShowArticleBusComp;
/*     */ import com.sree.tali.buscomp.ShowArticleBusCompImpl;
/*     */ import com.sree.tali.pojo.ArticleTypes;
/*     */ import com.sree.tali.pojo.UploadImagePojo;
/*     */ import java.io.PrintStream;
/*     */ import java.net.URL;
/*     */ import java.sql.Connection;
/*     */ import java.sql.Statement;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import javax.servlet.ServletContext;
/*     */ import org.apache.struts.action.ActionServlet;
/*     */ import org.apache.struts.action.PlugIn;
/*     */ import org.apache.struts.config.ModuleConfig;
/*     */ import org.hibernate.HibernateException;
/*     */ import org.hibernate.Session;
/*     */ import org.hibernate.SessionFactory;
/*     */ import org.hibernate.cfg.Configuration;
/*     */ import org.hibernate.internal.SessionImpl;
/*     */ 
/*     */ 
/*     */ public class HibernatePlugin
/*     */   implements PlugIn
/*     */ {
/*     */   private Configuration config;
/*     */   private SessionFactory factory;
/*     */   private Session session;
/*     */   private Connection connection;
/*  31 */   private String path = "/hbms/hibernate.cfg.xml";
/*  32 */   private static Class clazz = HibernatePlugin.class;
/*  33 */   public static final String KEY_NAME = clazz.getName();
/*     */   
/*     */   public void setPath(String paramString)
/*     */   {
/*  37 */     this.path = paramString;
/*     */   }
/*     */   
/*     */   public void init(ActionServlet paramActionServlet, ModuleConfig paramModuleConfig)
/*     */   {
/*     */     try
/*     */     {
/*  44 */       URL localURL = HibernatePlugin.class.getResource(this.path);
/*  45 */       this.config = new Configuration().configure(this.path);
/*  46 */       this.factory = this.config.buildSessionFactory();
/*  47 */       paramActionServlet.getServletContext().setAttribute(KEY_NAME, this.factory);
/*  48 */       this.connection = ((SessionImpl)this.factory.openSession()).connection();
/*     */       
/*  50 */       List<String> articleTypes = getArticleTypes(this.factory);
/*  51 */       List<UploadImagePojo> images = getImages(this.factory);
/*  52 */       paramActionServlet.getServletContext().setAttribute("articleTypes", articleTypes);
/*  53 */       paramActionServlet.getServletContext().setAttribute("images", images);
/*     */     }
/*     */     catch (HibernateException localHibernateException)
/*     */     {
/*  57 */       localHibernateException.printStackTrace();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  61 */       localException.printStackTrace();
/*     */     }
/*     */   }
/*     */   
/*     */   private List<String> getArticleTypes(SessionFactory localSessionFactory) {
/*  66 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*  67 */     List<String> articletypes = new ArrayList();
/*  68 */     List<ArticleTypes> articletypesdto = new ArrayList();
/*  69 */     articletypesdto = buscomp.viewArticleTypes(localSessionFactory.openSession());
/*  70 */     for (ArticleTypes articleTypes : articletypesdto)
/*     */     {
/*  72 */       articletypes.add(articleTypes.getArticleType());
/*     */     }
/*  74 */     return articletypes;
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> getImages(SessionFactory localSessionFactory)
/*     */   {
/*  79 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*  80 */     List<UploadImagePojo> images = buscomp.showTitles(localSessionFactory.openSession(), "IMAGES");
/*  81 */     return images;
/*     */   }
/*     */   
/*     */   private void createScript(Connection con)
/*     */   {
/*  86 */     String str1 = "insert into ROLES values (14,'ADMIN')";
/*  87 */     String str2 = "insert into ROLE_USER values (14,'ADMIN','vsreenu48')";
/*  88 */     String str3 = "insert into IP values (14,'1000:5b424039613764353962:afef8c3ff4f5398d753900862b1b972d3e10cc7de7db6e7dcc5952ee5c4a99ac6e972bea5d3fa95555d89d6a6a8f2a50900b0d2d89d01d69b7a57fd1c2015eac','A','sree')";
/*  89 */     String str4 = "insert into USERS values (14,'vsreenu48','1000:5b42403639623862383130:e9197e018ec0c0f9c3e520902970bd1bd07d07cb8a77ce4c49e9cce497605ffce7b4ce8b4c17d9c7d6402b458b2ec016d58a56cf43b856fc1b69fe9195caa77a','A')";
/*     */     try {
/*  91 */       System.out.print("===================================================insidesree");
/*  92 */       System.out.print("===================================================conections" + con);
/*  93 */       Statement s1 = con.createStatement();
/*     */       
/*     */ 
/*     */ 
/*     */ 
/*  98 */       System.out.println(s1.executeUpdate(str1));
/*  99 */       System.out.println(s1.executeUpdate(str2));
/* 100 */       System.out.println(s1.executeUpdate(str3));
/* 101 */       System.out.println(s1.executeUpdate(str4));
/* 102 */       con.commit(); return;
/*     */     } catch (Exception e) {
/* 104 */       e.printStackTrace();
/*     */     }
/*     */     finally {
/*     */       try {
/* 108 */         con.close();
/* 109 */       } catch (Exception e) { e.printStackTrace();
/*     */       }
/*     */     }
/*     */   }
/*     */   
/*     */   public void destroy()
/*     */   {
/*     */     try {
/* 117 */       this.factory.close();
/*     */     }
/*     */     catch (HibernateException localHibernateException)
/*     */     {
/* 121 */       localHibernateException.printStackTrace();
/*     */     }
/*     */     catch (Exception exception)
/*     */     {
/* 125 */       exception.printStackTrace();
/*     */     }
/*     */   }
/*     */   
/*     */   public static void main() {}
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\plugin\HibernatePlugin.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */