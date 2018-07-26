/*    */ package com.sree.tali.common;
/*    */ 
/*    */ import com.sree.tali.plugin.HibernatePlugin;
/*    */ import com.sree.tali.pojo.ArticleTypes;
/*    */ import java.io.PrintStream;
/*    */ import java.net.URL;
/*    */ import java.util.ArrayList;
/*    */ import java.util.List;
/*    */ import org.hibernate.HibernateException;
/*    */ import org.hibernate.Query;
/*    */ import org.hibernate.Session;
/*    */ import org.hibernate.SessionFactory;
/*    */ import org.hibernate.cfg.Configuration;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class ArtilceTypesConstants
/*    */ {
/*    */   private Configuration config;
/*    */   private SessionFactory factory;
/* 28 */   private String path = "/hbms/hibernate.cfg.xml";
/* 29 */   private static Class clazz = HibernatePlugin.class;
/* 30 */   public static final String KEY_NAME = clazz.getName();
/*    */   
/*    */   public void ArtilceTypesConstants()
/*    */   {
/*    */     try
/*    */     {
/* 36 */       URL localURL = HibernatePlugin.class.getResource(this.path);
/* 37 */       this.config = new Configuration().configure(this.path);
/* 38 */       this.factory = this.config.buildSessionFactory();
/* 39 */       System.out.println("Session is ================== " + this.factory.openSession());
/*    */     }
/*    */     catch (HibernateException localHibernateException)
/*    */     {
/* 43 */       localHibernateException.printStackTrace();
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 47 */       localException.printStackTrace();
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public List<String> getArticleTypes()
/*    */   {
/* 55 */     List<String> articleType = new ArrayList();
/* 56 */     if (this.factory != null)
/*    */     {
/* 58 */       Session session = this.factory.openSession();
/* 59 */       String qry = "from ArticleTypes";
/* 60 */       Query query = session.createQuery(qry);
/* 61 */       List<ArticleTypes> articletypes = query.list();
/* 62 */       for (ArticleTypes type : articletypes)
/*    */       {
/* 64 */         articleType.add(type.getArticleType());
/*    */       }
/* 66 */       return articleType;
/*    */     }
/*    */     
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/* 99 */     return articleType;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\common\ArtilceTypesConstants.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */