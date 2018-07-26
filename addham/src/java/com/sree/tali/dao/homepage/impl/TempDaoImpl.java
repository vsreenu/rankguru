/*     */ package com.sree.tali.dao.homepage.impl;
/*     */ 
/*     */ import com.sree.tali.hibernate.pojo.TempDataPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import org.hibernate.Query;
/*     */ import org.hibernate.Session;
/*     */ import org.hibernate.Transaction;
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ public class TempDaoImpl
/*     */   implements TempDao
/*     */ {
/*     */   public void saveTemp(TempDataPojo tempDataPojo, Session paramSession)
/*     */   {
/*  25 */     Transaction localTransaction = null;
/*     */     try {
/*  27 */       localTransaction = paramSession.beginTransaction();
/*  28 */       paramSession.save(tempDataPojo);
/*  29 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  33 */       localTransaction.rollback();
/*  34 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  38 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public List<ThoranamDataPojo> viewTemp(Session paramSession) {
/*  43 */     List<ThoranamDataPojo> inactiveArtcleList = new ArrayList();
/*     */     try
/*     */     {
/*  46 */       String str = "from ThoranamDataPojo pojo  order by pojo.id desc";
/*  47 */       Query localQuery = paramSession.createQuery(str);
/*  48 */       localQuery.setMaxResults(100);
/*  49 */       inactiveArtcleList = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  53 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  57 */       if (paramSession != null) {
/*  58 */         paramSession.close();
/*     */       }
/*     */     }
/*  61 */     return inactiveArtcleList;
/*     */   }
/*     */     public void activateTemp(int paramInt, Session paramSession)
              {
                Transaction localTransaction = null;
                try {
/*  67 */       ThoranamDataPojo temppojo = (ThoranamDataPojo)paramSession.load(ThoranamDataPojo.class, Integer.valueOf(paramInt));
/*  68 */       temppojo.setStatus("A");
                localTransaction = paramSession.beginTransaction();
/*  69 */       paramSession.update(temppojo);
/*  70 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  74 */       localTransaction.rollback();
/*  75 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  79 */       paramSession.close();
/*     */     }
               }
            public void inActivateTemp(int paramInt, Session paramSession)
              {
                Transaction localTransaction = null;
                try {
/*  67 */       ThoranamDataPojo temppojo = (ThoranamDataPojo)paramSession.load(ThoranamDataPojo.class, Integer.valueOf(paramInt));
/*  68 */       temppojo.setStatus("I");
                localTransaction = paramSession.beginTransaction();
/*  69 */       paramSession.update(temppojo);
/*  70 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  74 */       localTransaction.rollback();
/*  75 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  79 */       paramSession.close();
/*     */     }
               }
/*     */   public void removeTemp(int id, Session paramSession) {
/*  65 */     Transaction localTransaction = null;
/*     */     try {
/*  67 */       ThoranamDataPojo temppojo = (ThoranamDataPojo)paramSession.load(ThoranamDataPojo.class, Integer.valueOf(id));
/*  68 */       localTransaction = paramSession.beginTransaction();
/*  69 */       paramSession.delete(temppojo);
/*  70 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  74 */       localTransaction.rollback();
/*  75 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  79 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public TempDataPojo viewTempArticle(int id, Session paramSession) {
/*  84 */     List<TempDataPojo> homeDisplayList = new ArrayList();
/*     */     try
/*     */     {
/*  87 */       TempDataPojo uploadimagepojo = null;
/*  88 */       String str = "from TempDataPojo pojo where pojo.id =" + id;
/*  89 */       Query localQuery = paramSession.createQuery(str);
/*  90 */       homeDisplayList = localQuery.list();
/*  91 */       if ((homeDisplayList != null) && (homeDisplayList.size() > 0))
/*     */       {
/*  93 */         uploadimagepojo = (TempDataPojo)homeDisplayList.get(0);
/*     */       }
/*  95 */       return uploadimagepojo;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  99 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 103 */       if (paramSession != null) {
/* 104 */         paramSession.close();
/*     */       }
/*     */     }
/* 107 */     return null;
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\TempDaoImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */