/*    */ package com.sree.tali.dao.homepage.impl;
/*    */ 
/*    */ import com.sree.tali.hibernate.pojo.ArticleNumber;
/*    */ import com.sree.tali.pojo.UploadImagePojo;
/*    */ import java.util.List;
/*    */ import org.hibernate.Query;
/*    */ import org.hibernate.Session;
/*    */ import org.hibernate.Transaction;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class AdminDao
/*    */   implements IAdminDao
/*    */ {
/*    */   public void save(UploadImagePojo localAdminHomepojo, Session paramSession)
/*    */   {
/*    */     try
/*    */     {
/* 22 */       Transaction localTransaction = paramSession.beginTransaction();
/* 23 */       paramSession.save(localAdminHomepojo);
/* 24 */       localTransaction.commit();
/*    */     }
/*    */     catch (Exception e)
/*    */     {
/* 28 */       e.printStackTrace();
/*    */     }
/*    */     finally
/*    */     {
/* 32 */       if (paramSession != null)
/* 33 */         paramSession.close();
/*    */     }
/*    */   }
/*    */   
/*    */   public int getArticleNumber(Session paramSession) {
/* 38 */     int articleNumber = 0;
/* 39 */     String qry = "from ArticleNumber";
/* 40 */     Query query = paramSession.createQuery(qry);
/*    */     try {
/* 42 */       List<ArticleNumber> list = query.list();
/* 43 */       Transaction localTransaction = paramSession.beginTransaction();
/* 44 */       if ((list == null) || (list.size() == 0))
/*    */       {
/* 46 */         ArticleNumber article = new ArticleNumber();
/* 47 */         article.setArticleNumber(1);
/* 48 */         paramSession.save(article);
/* 49 */         articleNumber = 1;
/*    */       }
/*    */       else
/*    */       {
/* 53 */         ArticleNumber article = (ArticleNumber)list.get(0);
/* 54 */         articleNumber = article.getArticleNumber();
/* 55 */         article.setArticleNumber(articleNumber + 1);
/* 56 */         paramSession.update(article);
/*    */       }
/* 58 */       localTransaction.commit();
/*    */     }
/*    */     catch (Exception e)
/*    */     {
/* 62 */       e.printStackTrace();
/*    */     }
/*    */     finally
/*    */     {
/* 66 */       if (paramSession != null)
/* 67 */         paramSession.close();
/*    */     }
/* 69 */     return articleNumber;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\AdminDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */