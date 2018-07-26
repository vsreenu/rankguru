/*    */ package com.sree.tali.dao.homepage.impl;
/*    */ 
/*    */ import com.sree.tali.pojo.AdminHomepojo;
/*    */ import org.hibernate.Query;
/*    */ import org.hibernate.Session;
/*    */ import org.hibernate.Transaction;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class UploadHomeDAO
/*    */   implements IUploadHomeDao
/*    */ {
/*    */   public void save(AdminHomepojo paramAdminHomepojo, Session paramSession)
/*    */   {
/* 16 */     Transaction localTransaction = paramSession.beginTransaction();
/*    */     try
/*    */     {
/* 19 */       paramSession.save(paramAdminHomepojo);
/* 20 */       localTransaction.commit();
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 24 */       localException.printStackTrace();
/* 25 */       localTransaction.rollback();
/*    */     }
/*    */   }
/*    */   
/*    */   public AdminHomepojo load(int paramInt, Session paramSession)
/*    */   {
/* 31 */     Transaction localTransaction = paramSession.beginTransaction();
/* 32 */     AdminHomepojo localAdminHomepojo = null;
/* 33 */     Object localObject = null;
/*    */     try
/*    */     {
/* 36 */       localAdminHomepojo = (AdminHomepojo)paramSession.createQuery("from fileUploadForm where id=" + paramInt).list();
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 40 */       localTransaction.rollback();
/*    */     }
/* 42 */     return localAdminHomepojo;
/*    */   }
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
/*    */   public AdminHomepojo DisplayHome(Session paramSession)
/*    */   {
/* 64 */     Transaction localTransaction = paramSession.beginTransaction();
/* 65 */     AdminHomepojo localAdminHomepojo = null;
/* 66 */     Object localObject = null;
/*    */     try
/*    */     {
/* 69 */       localAdminHomepojo = (AdminHomepojo)paramSession.createQuery("from fileUploadForm where id=").list();
/*    */     }
/*    */     catch (Exception localException)
/*    */     {
/* 73 */       localTransaction.rollback();
/*    */     }
/* 75 */     return localAdminHomepojo;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\UploadHomeDAO.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */