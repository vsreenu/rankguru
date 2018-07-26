/*     */ package com.sree.tali.dao.homepage.impl;
/*     */ 
/*     */ import com.sree.tali.hibernate.pojo.IpPojo;
/*     */ import com.sree.tali.hibernate.pojo.UserPojo;
/*     */ import com.sree.tali.pojo.AdminHomepojo;
/*     */ import com.sree.tali.pojo.HomeList;
/*     */ import com.sree.tali.pojo.LoginForm;
/*     */ import com.sree.tali.util.SecurityAlgo;
/*     */ import java.io.PrintStream;
/*     */ import java.sql.Connection;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.Statement;
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import org.hibernate.Query;
/*     */ import org.hibernate.Session;
/*     */ import org.hibernate.internal.SessionImpl;
/*     */ 
/*     */ public class IndexDao
/*     */   implements IIndexDao
/*     */ {
/*     */   public List<HomeList> Load24List(Session paramSession)
/*     */   {
/*  24 */     return loadHomeTitles("24hrs", paramSession);
/*     */   }
/*     */   
/*     */   public List<HomeList> Load70List(Session paramSession)
/*     */   {
/*  29 */     return loadHomeTitles("70mm", paramSession);
/*     */   }
/*     */   
/*     */   public List<HomeList> AtoZList(Session paramSession)
/*     */   {
/*  34 */     return loadHomeTitles("AtoZ", paramSession);
/*     */   }
/*     */   
/*     */   public List<HomeList> loadHomeTitles(String paramString, Session paramSession)
/*     */   {
/*  39 */     ArrayList localArrayList = new ArrayList();
/*  40 */     HomeList localHomeList = null;
/*     */     try
/*     */     {
/*  43 */       Connection localConnection = ((SessionImpl)paramSession).connection();
/*  44 */       String str = "select id ,UPLOAD_TYPE, TITLE from upload_home where UPLOAD_TYPE ='" + paramString + "' order by id DESC";
/*  45 */       Statement localStatement = localConnection.createStatement();
/*  46 */       ResultSet localResultSet = localStatement.executeQuery(str.toUpperCase());
/*  47 */       while (localResultSet.next())
/*     */       {
/*  49 */         localHomeList = new HomeList();
/*  50 */         localHomeList.setId(localResultSet.getInt(1));
/*  51 */         localHomeList.setTypr(localResultSet.getString(2));
/*  52 */         localHomeList.setTitle(localResultSet.getString(3));
/*  53 */         localArrayList.add(localHomeList);
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  58 */       localException.printStackTrace();
/*     */     }
/*  60 */     return localArrayList;
/*     */   }
/*     */   
/*     */   public AdminHomepojo DisplayPage(Session paramSession, int paramInt)
/*     */   {
/*  65 */     AdminHomepojo localAdminHomepojo = null;
/*     */     try
/*     */     {
/*  68 */       String str = "from AdminHomepojo pojo  where pojo.id=" + paramInt;
/*  69 */       Query localQuery = paramSession.createQuery(str);
/*  70 */       List localList = localQuery.list();
/*  71 */       localAdminHomepojo = (AdminHomepojo)localList.get(0);
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  75 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  79 */       if (paramSession != null) {
/*  80 */         paramSession.close();
/*     */       }
/*     */     }
/*  83 */     return localAdminHomepojo;
/*     */   }
/*     */   
/*     */   public boolean Authenticate(Session paramSession, LoginForm form)
/*     */   {
/*  88 */     boolean isValidUser = false;
/*     */     try
/*     */     {
/*  91 */       String str = "from UserPojo pojo  where upper(pojo.userName)='" + form.getJ_username().toUpperCase() + "' and pojo.status = 'A'";
/*  92 */       System.out.println(str);
/*  93 */       Query localQuery = paramSession.createQuery(str);
/*  94 */       List<UserPojo> localList = localQuery.list();
/*  95 */       for (UserPojo loginpojo : localList)
/*     */       {
/*  97 */         if (SecurityAlgo.validatePassword(form.getJ_password(), loginpojo.getPassWord()))
/*     */         {
/*  99 */           isValidUser = true;
/*     */         }
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 105 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 109 */       if (paramSession != null) {
/* 110 */         paramSession.close();
/*     */       }
/*     */     }
/* 113 */     return isValidUser;
/*     */   }
/*     */   
/*     */ 
/*     */   public boolean AuthenticateIp(Session paramSession, String ip)
/*     */   {
/* 119 */     boolean isValidUser = false;
/*     */     try
/*     */     {
/* 122 */       String str = "from IpPojo where status = 'A'";
/* 123 */       System.out.println(str);
/* 124 */       Query localQuery = paramSession.createQuery(str);
/*     */       
/* 126 */       ip = ip.substring(0, ip.indexOf(".", ip.indexOf(".") + 1) + 2);
/* 127 */       List<IpPojo> localList = localQuery.list();
/* 128 */       for (IpPojo ippojo : localList)
/*     */       {
/* 130 */         if (SecurityAlgo.validatePassword(ip, ippojo.getIp()))
/*     */         {
/* 132 */           isValidUser = true;
/*     */         }
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 138 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 142 */       if (paramSession != null) {
/* 143 */         paramSession.close();
/*     */       }
/*     */     }
/* 146 */     return isValidUser;
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\IndexDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */