/*    */ package com.sree.tali.plugin;
/*    */ 
/*    */ import java.io.PrintStream;
/*    */ import java.net.URL;
/*    */ import java.sql.Connection;
/*    */ import java.sql.Statement;
/*    */ import javax.servlet.ServletContext;
/*    */ import org.apache.struts.action.ActionServlet;
/*    */ import org.apache.struts.action.PlugIn;
/*    */ import org.apache.struts.config.ModuleConfig;
/*    */ import org.hibernate.HibernateException;
/*    */ import org.hibernate.Session;
/*    */ import org.hibernate.SessionFactory;
/*    */ import org.hibernate.cfg.Configuration;
/*    */ import org.hibernate.internal.SessionImpl;
/*    */ 
/*    */ 
/*    */ public class HibernatePlugin1
/*    */   implements PlugIn
/*    */ {
/*    */   private Configuration config;
/*    */   private SessionFactory factory;
/*    */   private Session session;
/*    */   private Connection connection;
/* 25 */   private String path = "/hbms/hibernate.cfg.xml";
/* 26 */   private static Class clazz = HibernatePlugin.class;
/* 27 */   public static final String KEY_NAME = clazz.getName();
/*    */   
/*    */   public void setPath(String paramString)
/*    */   {
/* 31 */     this.path = paramString;
/*    */   }
/*    */   
/*    */   public void init(ActionServlet paramActionServlet, ModuleConfig paramModuleConfig)
/*    */   {
/*    */     try
/*    */     {
/* 38 */       URL localURL = HibernatePlugin.class.getResource(this.path);
/* 39 */       this.config = new Configuration().configure(this.path);
/* 40 */       this.factory = this.config.buildSessionFactory();
/* 41 */       paramActionServlet.getServletContext().setAttribute(KEY_NAME, this.factory);
/* 42 */       this.connection = ((SessionImpl)this.factory.openSession()).connection();
/*    */ 
/*    */     }
/*    */     catch (HibernateException localHibernateException)
/*    */     {
/* 47 */       localHibernateException.printStackTrace();
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 51 */       localException.printStackTrace();
/*    */     }
/*    */   }
/*    */   
/*    */   private void createScript(Connection con) {
/* 56 */     String str1 = "insert into ROLES values (14,'ADMIN')";
/* 57 */     String str2 = "insert into ROLE_USER values (14,'ADMIN','vsreenu48')";
/* 58 */     String str3 = "insert into IP values (14,'1000:5b424039613764353962:afef8c3ff4f5398d753900862b1b972d3e10cc7de7db6e7dcc5952ee5c4a99ac6e972bea5d3fa95555d89d6a6a8f2a50900b0d2d89d01d69b7a57fd1c2015eac','A','sree')";
/* 59 */     String str4 = "insert into USERS values (14,'vsreenu48','1000:5b42403639623862383130:e9197e018ec0c0f9c3e520902970bd1bd07d07cb8a77ce4c49e9cce497605ffce7b4ce8b4c17d9c7d6402b458b2ec016d58a56cf43b856fc1b69fe9195caa77a','A')";
/*    */     try {
/* 61 */       System.out.print("===================================================insidesree");
/* 62 */       System.out.print("===================================================conections" + con);
/* 63 */       Statement s1 = con.createStatement();
/*    */       
/*    */ 
/*    */ 
/*    */ 
/* 68 */       System.out.println(s1.executeUpdate(str1));
/* 69 */       System.out.println(s1.executeUpdate(str2));
/* 70 */       System.out.println(s1.executeUpdate(str3));
/* 71 */       System.out.println(s1.executeUpdate(str4));
/* 72 */       con.commit(); return;
/*    */     } catch (Exception e) {
/* 74 */       e.printStackTrace();
/*    */     }
/*    */     finally {
/*    */       try {
/* 78 */         con.close();
/* 79 */       } catch (Exception e) { e.printStackTrace();
/*    */       }
/*    */     }
/*    */   }
/*    */   
/*    */   public void destroy()
/*    */   {
/*    */     try {
/* 87 */       this.factory.close();
/*    */     }
/*    */     catch (HibernateException localHibernateException)
/*    */     {
/* 91 */       localHibernateException.printStackTrace();
/*    */     }
/*    */     catch (Exception exception)
/*    */     {
/* 95 */       exception.printStackTrace();
/*    */     }
/*    */   }
/*    */   
/*    */   public static void main() {}
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\plugin\HibernatePlugin1.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */