/*     */ package com.sree.tali.dao.homepage.impl;
/*     */ 
/*     */ import com.sree.tali.common.CommonUtils;
/*     */ import com.sree.tali.hibernate.pojo.IpPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
/*     */ import com.sree.tali.hibernate.pojo.UserPojo;
/*     */ import com.sree.tali.pojo.ArticleTypes;
/*     */ import com.sree.tali.pojo.Role;
/*     */ import com.sree.tali.pojo.RoleArticleMapping;
/*     */ import com.sree.tali.pojo.RoleUserMapping;
import com.sree.tali.pojo.ThornamPojo;
/*     */ import com.sree.tali.pojo.UploadImagePojo;
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
/*     */ public class ShowArticleDaoImpl
/*     */   implements ShowArticleDao
/*     */ {
/*     */   public List<UploadImagePojo> showHomeArticle(Session paramSession)
/*     */   {
/*  30 */     List<UploadImagePojo> homeDisplayList = new ArrayList();
/*     */     try
/*     */     {
/*  33 */       String str = "from UploadImagePojo pojo where pojo.status='A' and  pojo.description is not null and pojo.description!=''  order by pojo.articleNumber desc";
/*  34 */       Query localQuery = paramSession.createQuery(str);
/*  35 */       localQuery.setMaxResults(15);
/*  36 */       homeDisplayList = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/*  40 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  44 */       if (paramSession != null) {
/*  45 */         paramSession.close();
/*     */       }
/*     */     }
/*  48 */     return homeDisplayList;
/*     */   }
/*     */   
/*     */   public UploadImagePojo editArticle(Session paramSession, int id) {
/*  52 */     UploadImagePojo uploadImagePojo = null;
/*     */     try
/*     */     {
/*  55 */       uploadImagePojo = (UploadImagePojo)paramSession.load(UploadImagePojo.class, Integer.valueOf(id));
/*     */     } catch (Exception ex) {
/*  57 */       ex = 
/*     */       
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*  64 */         ex;ex.printStackTrace();
/*     */     }
/*     */     finally {}
/*     */     
/*     */ 
/*     */ 
/*  65 */     return uploadImagePojo;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public void updateArticle(Session paramSession, UploadImagePojo uploadimagepojo)
/*     */   {
/*  72 */     Transaction localTransaction = null;
/*     */     try {
/*  74 */       localTransaction = paramSession.beginTransaction();
/*  75 */       paramSession.update(uploadimagepojo);
/*  76 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/*  80 */       localTransaction.rollback();
/*  81 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/*  85 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> viewArticles(Session paramSession, UploadImagePojo uploadimagepojo)
/*     */   {
/*  91 */     List<UploadImagePojo> viewarticlelist = new ArrayList();
/*     */     try
/*     */     {
/*  94 */       String str = "from UploadImagePojo pojo where (pojo.articleType ='" + uploadimagepojo.getViewArticleType() + "' or pojo.articleType is null or pojo.articleType='') and pojo.status ='" + uploadimagepojo.getViewStatus() + "'  order by pojo.id desc";
/*  95 */       Query localQuery = paramSession.createQuery(str);
/*  96 */       viewarticlelist = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 100 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 104 */       if (paramSession != null) {
/* 105 */         paramSession.close();
/*     */       }
/*     */     }
/* 108 */     return viewarticlelist;
/*     */   }
/*     */   
/*     */ 
/*     */   public List<UploadImagePojo> showInactiveArticle(Session paramSession)
/*     */   {
/* 114 */     List<UploadImagePojo> inactiveArtcleList = new ArrayList();
/*     */     try
/*     */     {
/* 117 */       String str = "from UploadImagePojo pojo  order by pojo.id desc";
/* 118 */       Query localQuery = paramSession.createQuery(str);
/* 119 */       localQuery.setMaxResults(15);
/* 120 */       inactiveArtcleList = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 124 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 128 */       if (paramSession != null) {
/* 129 */         paramSession.close();
/*     */       }
/*     */     }
/* 132 */     return inactiveArtcleList;
/*     */   }
/*     */   
/*     */ 
/*     */   public UploadImagePojo showArticle(Session paramSession, String articleName)
/*     */   {
/* 138 */     List<UploadImagePojo> homeDisplayList = new ArrayList();
/*     */     try
/*     */     {
/* 141 */       UploadImagePojo uploadimagepojo = null;
/* 142 */       String str = "from UploadImagePojo pojo where upper(pojo.url) ='" + articleName.toUpperCase() + "'";
/* 143 */       Query localQuery = paramSession.createQuery(str);
/* 144 */       homeDisplayList = localQuery.list();
/* 145 */       Transaction tx; if ((homeDisplayList != null) && (homeDisplayList.size() != 0))
/*     */       {
/* 147 */         uploadimagepojo = (UploadImagePojo)homeDisplayList.get(0);
/* 148 */         tx = paramSession.beginTransaction();
/* 149 */         uploadimagepojo.setCount(uploadimagepojo.getCount() + 1);
/* 150 */         paramSession.update(uploadimagepojo);
/* 151 */         tx.commit();
/*     */       }
/* 153 */       return uploadimagepojo;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 157 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 161 */       if (paramSession != null) {
/* 162 */         paramSession.close();
/*     */       }
/*     */     }
/* 165 */     return null;
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> showTitles(Session paramSession, String articleType)
/*     */   {
/* 170 */     List<UploadImagePojo> homeDisplayList = new ArrayList();
/*     */     try
/*     */     {
/* 173 */       String str = null;
/* 174 */       if (articleType.equalsIgnoreCase("ATOZ")) {
/* 175 */         str = "from UploadImagePojo pojo  where  upper(pojo.articleType)  in ('ATOZ','STATECA','NATIONALCA','WORLDCA','STATEGK','NATIONALGK','WORLDGK','ANALYSYS') and pojo.status ='A' order by pojo.articleNumber desc";
/*     */       } else
/* 177 */         str = "from UploadImagePojo pojo  where upper(pojo.articleType) = '" + articleType.toUpperCase() + "' and pojo.status ='A' order by pojo.articleNumber desc";
/* 178 */       Query localQuery = paramSession.createQuery(str);
/* 179 */       homeDisplayList = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 183 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 187 */       if (paramSession != null) {
/* 188 */         paramSession.close();
/*     */       }
/*     */     }
/* 191 */     return homeDisplayList;
/*     */   }
/*     */   
/*     */ 
/*     */   public List<UploadImagePojo> showRelatedArticle(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/* 197 */     List<UploadImagePojo> relaredArticles = new ArrayList();
/*     */     try
/*     */     {
/* 200 */       String str = "from UploadImagePojo pojo  where upper(pojo.articleType) = '" + uploadhomeimage.getArticleType().toUpperCase() + "' and pojo.status='A' and  pojo.description is not null and pojo.description!='' and  pojo.id < " + uploadhomeimage.getId() + " order by pojo.id desc ";
/* 201 */       Query localQuery = paramSession.createQuery(str);
/* 202 */       localQuery.setMaxResults(8);
/* 203 */       relaredArticles = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 207 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 211 */       if (paramSession != null) {
/* 212 */         paramSession.close();
/*     */       }
/*     */     }
/* 215 */     return relaredArticles;
/*     */   }
/*     */   public List<ThoranamDataPojo> showThoranamTitles(Session paramSession, String articleType )
            { 
/* 170 */     List<ThoranamDataPojo> homeDisplayList = new ArrayList();
/*     */     try
/*     */     {
/* 173 */       String str = null;
/* 177 */       str = "from ThoranamDataPojo pojo where pojo.status='A' order by pojo.id desc";
/* 178 */       Query localQuery = paramSession.createQuery(str);
                localQuery.setMaxResults(150);
/* 179 */       homeDisplayList = localQuery.list();
                // System.out.println("thoranam size ======="+homeDisplayList);
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 183 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 187 */       if (paramSession != null) {
/* 188 */         paramSession.close();
/*     */       }
/*     */     }
/* 191 */     return homeDisplayList;
            }
              public  void addThoranam(Session paramSession, ThornamPojo pojo)
              {
/* 288 */     ThoranamDataPojo data = new ThoranamDataPojo();
/* 289 */     Transaction localTransaction = null;
/*     */     try {
/* 292 */       data.setStatus(pojo.getStatus());
                data.setTitle(pojo.getTitle());
                data.setUrl(pojo.getUrl());
                data.setType(pojo.getType());
/* 293 */       localTransaction = paramSession.beginTransaction();
/* 294 */       paramSession.save(data);
/* 295 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 299 */       localTransaction.rollback();
/* 300 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 304 */       paramSession.close();
/*     */     } 
              }

/*     */   public List<UploadImagePojo> showRecentArticle(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/* 220 */     List<UploadImagePojo> recentArticle = new ArrayList();
/*     */     try
/*     */     {
/* 223 */       String str = "from UploadImagePojo pojo where pojo.status='A' and  pojo.description is not null and pojo.description!='' order by pojo.id desc";
/* 224 */       Query localQuery = paramSession.createQuery(str);
/* 225 */       localQuery.setMaxResults(8);
/* 226 */       recentArticle = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 230 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 234 */       if (paramSession != null) {
/* 235 */         paramSession.close();
/*     */       }
/*     */     }
/* 238 */     return recentArticle;
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> showMostViewedArticle(Session paramSession, UploadImagePojo uploadhomeimage) {
/* 242 */     List<UploadImagePojo> mostViewedArticle = new ArrayList();
/*     */     try
/*     */     {
/* 245 */       String str = "from UploadImagePojo pojo order by pojo.count desc";
/* 246 */       Query localQuery = paramSession.createQuery(str);
/* 247 */       localQuery.setMaxResults(8);
/* 248 */       mostViewedArticle = localQuery.list();
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 252 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 256 */       if (paramSession != null) {
/* 257 */         paramSession.close();
/*     */       }
/*     */     }
/* 260 */     return mostViewedArticle;
/*     */   }
/*     */   
/*     */   public void createUser(Session paramSession, UploadImagePojo uploadimagePojo) {
/* 264 */     CommonUtils commonutils = new CommonUtils();
/* 265 */     UserPojo userpojo = new UserPojo();
/* 266 */     Transaction localTransaction = null;
/*     */     try {
/* 268 */       userpojo = commonutils.getUserPojo(userpojo, uploadimagePojo);
/* 269 */       userpojo.setStatus("A");
/* 270 */       localTransaction = paramSession.beginTransaction();
/* 271 */       paramSession.save(userpojo);
/* 272 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 276 */       localTransaction.rollback();
/* 277 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 281 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void addIp(Session paramSession, UploadImagePojo uploadimagePojo)
/*     */   {
/* 287 */     CommonUtils commonutils = new CommonUtils();
/* 288 */     IpPojo ippojo = new IpPojo();
/* 289 */     Transaction localTransaction = null;
/*     */     try {
/* 291 */       ippojo = commonutils.getIpPojo(ippojo, uploadimagePojo);
/* 292 */       ippojo.setStatus("A");
/* 293 */       localTransaction = paramSession.beginTransaction();
/* 294 */       paramSession.save(ippojo);
/* 295 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 299 */       localTransaction.rollback();
/* 300 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 304 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */   public List<UserPojo> showUsers(Session paramSession)
/*     */   {
/* 311 */     List<UserPojo> userList = new ArrayList();
/*     */     try
/*     */     {
/* 314 */       String str = "from UserPojo user where user.status='A'";
/* 315 */       Query localQuery = paramSession.createQuery(str);
/* 316 */       userList = localQuery.list();
/* 317 */       return userList;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 321 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 325 */       if (paramSession != null) {
/* 326 */         paramSession.close();
/*     */       }
/*     */     }
/* 329 */     return userList;
/*     */   }
/*     */   
/*     */   public List<IpPojo> showIps(Session paramSession)
/*     */   {
/* 334 */     List<IpPojo> iplist = new ArrayList();
/*     */     try
/*     */     {
/* 337 */       String str = "from IpPojo ip where ip.status='A'";
/* 338 */       Query localQuery = paramSession.createQuery(str);
/* 339 */       iplist = localQuery.list();
/* 340 */       return iplist;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 344 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 348 */       if (paramSession != null) {
/* 349 */         paramSession.close();
/*     */       }
/*     */     }
/* 352 */     return iplist;
/*     */   }
/*     */   
/*     */   public void inactivateUser(Session paramSession, int id)
/*     */   {
/* 357 */     UserPojo userpojo = new UserPojo();
/* 358 */     Transaction localTransaction = null;
/*     */     try {
/* 360 */       userpojo = (UserPojo)paramSession.load(UserPojo.class, Integer.valueOf(id));
/* 361 */       userpojo.setStatus("I");
/* 362 */       localTransaction = paramSession.beginTransaction();
/* 363 */       paramSession.update(userpojo);
/* 364 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 368 */       localTransaction.rollback();
/* 369 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 373 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void inactivateIp(Session paramSession, int id) {
/* 378 */     IpPojo ippojo = new IpPojo();
/* 379 */     Transaction localTransaction = null;
/*     */     try {
/* 381 */       ippojo = (IpPojo)paramSession.load(IpPojo.class, Integer.valueOf(id));
/* 382 */       ippojo.setStatus("I");
/* 383 */       localTransaction = paramSession.beginTransaction();
/* 384 */       paramSession.update(ippojo);
/* 385 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 389 */       localTransaction.rollback();
/* 390 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 394 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void deleteAllIps(Session paramSession) {
/* 399 */     Transaction localTransaction = null;
/*     */     try {
/* 401 */       List<IpPojo> ipslist = showAllIps(paramSession);
/* 402 */       localTransaction = paramSession.beginTransaction();
/* 403 */       for (IpPojo ippojo : ipslist)
/* 404 */         paramSession.delete(ippojo);
/* 405 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 409 */       localTransaction.rollback();
/* 410 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 414 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public List<IpPojo> showAllIps(Session paramSession) {
/* 419 */     List<IpPojo> iplist = new ArrayList();
/*     */     try
/*     */     {
/* 422 */       String str = "from IpPojo";
/* 423 */       Query localQuery = paramSession.createQuery(str);
/* 424 */       return localQuery.list();
/*     */ 
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 429 */       localException.printStackTrace();
/*     */     }
/* 431 */     return iplist;
/*     */   }
/*     */   
/*     */   public void inactivateArticle(Session paramSession, int id) {
/* 435 */     UploadImagePojo uploadimagepojo = new UploadImagePojo();
/* 436 */     Transaction localTransaction = null;
/*     */     try {
/* 438 */       uploadimagepojo = (UploadImagePojo)paramSession.load(UploadImagePojo.class, Integer.valueOf(id));
/* 439 */       uploadimagepojo.setStatus("I");
/* 440 */       localTransaction = paramSession.beginTransaction();
/* 441 */       paramSession.update(uploadimagepojo);
/* 442 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 446 */       localTransaction.rollback();
/* 447 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 451 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void activateArticle(Session paramSession, int id, int articleNumber)
/*     */   {
/* 457 */     UploadImagePojo uploadimagepojo = new UploadImagePojo();
/* 458 */     Transaction localTransaction = null;
/*     */     try {
/* 460 */       uploadimagepojo = (UploadImagePojo)paramSession.load(UploadImagePojo.class, Integer.valueOf(id));
/* 461 */       uploadimagepojo.setStatus("A");
/* 462 */       if (uploadimagepojo.getArticleNumber() == 0)
/*     */       {
/* 464 */         uploadimagepojo.setArticleNumber(articleNumber * 10);
/*     */       }
/* 466 */       localTransaction = paramSession.beginTransaction();
/* 467 */       paramSession.update(uploadimagepojo);
/* 468 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 472 */       localTransaction.rollback();
/* 473 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 477 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public void removeArticle(Session paramSession, int id)
/*     */   {
/* 485 */     UploadImagePojo uploadimagepojo = new UploadImagePojo();
/* 486 */     Transaction localTransaction = null;
/*     */     try {
/* 488 */       uploadimagepojo = (UploadImagePojo)paramSession.load(UploadImagePojo.class, Integer.valueOf(id));
/* 489 */       localTransaction = paramSession.beginTransaction();
/* 490 */       paramSession.delete(uploadimagepojo);
/* 491 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 495 */       localTransaction.rollback();
/* 496 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 500 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void removeUser(Session paramSession, int id)
/*     */   {
/* 506 */     UserPojo userpojo = new UserPojo();
/* 507 */     Transaction localTransaction = null;
/*     */     try {
/* 509 */       userpojo = (UserPojo)paramSession.load(UserPojo.class, Integer.valueOf(id));
/* 510 */       localTransaction = paramSession.beginTransaction();
/* 511 */       paramSession.delete(userpojo);
/* 512 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 516 */       localTransaction.rollback();
/* 517 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 521 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void removeIp(Session paramSession, int id) {
/* 526 */     IpPojo ippojo = new IpPojo();
/* 527 */     Transaction localTransaction = null;
/*     */     try {
/* 529 */       ippojo = (IpPojo)paramSession.load(IpPojo.class, Integer.valueOf(id));
/* 530 */       localTransaction = paramSession.beginTransaction();
/* 531 */       paramSession.delete(ippojo);
/* 532 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 536 */       localTransaction.rollback();
/* 537 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 541 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void addArticleTypes(Session paramSession, ArticleTypes articletypes)
/*     */   {
/* 547 */     Transaction localTransaction = null;
/*     */     try {
/* 549 */       localTransaction = paramSession.beginTransaction();
/* 550 */       paramSession.save(articletypes);
/* 551 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 555 */       localTransaction.rollback();
/* 556 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 560 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public List<ArticleTypes> viewArticleTypes(Session paramSession)
/*     */   {
/* 566 */     List<ArticleTypes> articleTypes = new ArrayList();
/*     */     try
/*     */     {
/* 569 */       String str = "from ArticleTypes";
/* 570 */       Query localQuery = paramSession.createQuery(str);
/* 571 */       articleTypes = localQuery.list();
/* 572 */       return articleTypes;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 576 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 580 */       paramSession.close();
/*     */     }
/* 582 */     return articleTypes;
/*     */   }
/*     */   
/*     */   public void removeArticleTypes(Session paramSession, int id) {
/* 586 */     ArticleTypes articleTypes = new ArticleTypes();
/* 587 */     Transaction localTransaction = null;
/*     */     try {
/* 589 */       articleTypes = (ArticleTypes)paramSession.load(ArticleTypes.class, Integer.valueOf(id));
/* 590 */       localTransaction = paramSession.beginTransaction();
/* 591 */       paramSession.delete(articleTypes);
/* 592 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 596 */       localTransaction.rollback();
/* 597 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 601 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void addRole(Session paramSession, Role role)
/*     */   {
/* 611 */     Transaction localTransaction = null;
/*     */     try {
/* 613 */       localTransaction = paramSession.beginTransaction();
/* 614 */       paramSession.save(role);
/* 615 */       localTransaction.commit();
/*     */     } catch (Exception e) {
/* 617 */       localTransaction.rollback();e.printStackTrace();
/* 618 */     } finally { paramSession.close();
/*     */     }
/*     */   }
/*     */   
/* 622 */   public List<Role> viewRole(Session paramSession) { List<Role> roles = new ArrayList();
/*     */     try
/*     */     {
/* 625 */       String str = "from Role";
/* 626 */       Query localQuery = paramSession.createQuery(str);
/* 627 */       roles = localQuery.list();
/* 628 */       return roles;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 632 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 636 */       paramSession.close();
/*     */     }
/* 638 */     return roles;
/*     */   }
/*     */   
/*     */   public void removeRole(Session paramSession, int id) {
/* 642 */     Role role = new Role();
/* 643 */     Transaction localTransaction = null;
/*     */     try {
/* 645 */       role = (Role)paramSession.load(Role.class, Integer.valueOf(id));
/* 646 */       localTransaction = paramSession.beginTransaction();
/* 647 */       paramSession.delete(role);
/* 648 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 652 */       localTransaction.rollback();
/* 653 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 657 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void addRoleUser(Session paramSession, RoleUserMapping roleusermapping) {
/* 662 */     Transaction localTransaction = null;
/*     */     try {
/* 664 */       localTransaction = paramSession.beginTransaction();
/* 665 */       paramSession.save(roleusermapping);
/* 666 */       localTransaction.commit();
/*     */     } catch (Exception e) {
/* 668 */       localTransaction.rollback();e.printStackTrace();
/* 669 */     } finally { paramSession.close();
/*     */     }
/*     */   }
/*     */   
/* 673 */   public List<RoleUserMapping> viewRoleUser(Session paramSession) { List<RoleUserMapping> roleusers = new ArrayList();
/*     */     try
/*     */     {
/* 676 */       String str = "from RoleUserMapping";
/* 677 */       Query localQuery = paramSession.createQuery(str);
/* 678 */       roleusers = localQuery.list();
/* 679 */       return roleusers;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 683 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 687 */       paramSession.close();
/*     */     }
/* 689 */     return roleusers;
/*     */   }
/*     */   
/*     */   public void removeRoleUser(Session paramSession, int id) {
/* 693 */     RoleUserMapping roleusermapping = new RoleUserMapping();
/* 694 */     Transaction localTransaction = null;
/*     */     try {
/* 696 */       roleusermapping = (RoleUserMapping)paramSession.load(RoleUserMapping.class, Integer.valueOf(id));
/* 697 */       localTransaction = paramSession.beginTransaction();
/* 698 */       paramSession.delete(roleusermapping);
/* 699 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 703 */       localTransaction.rollback();
/* 704 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 708 */       paramSession.close();
/*     */     }
/*     */   }
/*     */   
/*     */   public void addRoleArticle(Session paramSession, RoleArticleMapping rolearticlemapping) {
/* 713 */     Transaction localTransaction = null;
/*     */     try {
/* 715 */       localTransaction = paramSession.beginTransaction();
/* 716 */       paramSession.save(rolearticlemapping);
/* 717 */       localTransaction.commit();
/*     */     } catch (Exception e) {
/* 719 */       localTransaction.rollback();e.printStackTrace();
/* 720 */     } finally { paramSession.close();
/*     */     }
/*     */   }
/*     */   
/* 724 */   public List<RoleArticleMapping> viewRoleArticle(Session paramSession) { List<RoleArticleMapping> rolearticle = new ArrayList();
/*     */     try
/*     */     {
/* 727 */       String str = "from RoleArticleMapping";
/* 728 */       Query localQuery = paramSession.createQuery(str);
/* 729 */       rolearticle = localQuery.list();
/* 730 */       return rolearticle;
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 734 */       localException.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 738 */       paramSession.close();
/*     */     }
/* 740 */     return rolearticle;
/*     */   }
/*     */   
/*     */   public void removeRoleArticle(Session paramSession, int id) {
/* 744 */     RoleArticleMapping rolearticlemapping = new RoleArticleMapping();
/* 745 */     Transaction localTransaction = null;
/*     */     try {
/* 747 */       rolearticlemapping = (RoleArticleMapping)paramSession.load(RoleArticleMapping.class, Integer.valueOf(id));
/* 748 */       localTransaction = paramSession.beginTransaction();
/* 749 */       paramSession.delete(rolearticlemapping);
/* 750 */       localTransaction.commit();
/*     */     }
/*     */     catch (Exception e)
/*     */     {
/* 754 */       localTransaction.rollback();
/* 755 */       e.printStackTrace();
/*     */     }
/*     */     finally
/*     */     {
/* 759 */       paramSession.close();
/*     */     }
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\ShowArticleDaoImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */