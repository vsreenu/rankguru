/*     */ package com.sree.tali.buscomp;
/*     */ 
/*     */ import com.sree.tali.dao.homepage.impl.ShowArticleDao;
/*     */ import com.sree.tali.dao.homepage.impl.ShowArticleDaoImpl;
/*     */ import com.sree.tali.hibernate.pojo.IpPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
/*     */ import com.sree.tali.hibernate.pojo.UserPojo;
/*     */ import com.sree.tali.pojo.ArticleTypes;
/*     */ import com.sree.tali.pojo.Role;
/*     */ import com.sree.tali.pojo.RoleArticleMapping;
/*     */ import com.sree.tali.pojo.RoleUserMapping;
import com.sree.tali.pojo.ThornamPojo;
/*     */ import com.sree.tali.pojo.UploadImagePojo;
/*     */ import java.util.List;
/*     */ import org.hibernate.Session;
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ public class ShowArticleBusCompImpl
/*     */   implements ShowArticleBusComp
/*     */ {
/*     */   public List<UploadImagePojo> showHomeArticle(Session paramSession)
/*     */   {
/*  27 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  28 */     return articledao.showHomeArticle(paramSession);
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> showInactiveArticle(Session paramSession)
/*     */   {
/*  33 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  34 */     return articledao.showInactiveArticle(paramSession);
/*     */   }
/*     */   
/*     */   public UploadImagePojo showArticle(Session paramSession, String articleName)
/*     */   {
/*  39 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  40 */     return articledao.showArticle(paramSession, articleName);
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> viewArticles(Session paramSession, UploadImagePojo uploadimagepojo)
/*     */   {
/*  45 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  46 */     return articledao.viewArticles(paramSession, uploadimagepojo);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public void updateArticle(Session paramSession, UploadImagePojo uploadimagepojo)
/*     */   {
/*  53 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  54 */     articledao.updateArticle(paramSession, uploadimagepojo);
/*     */   }
/*     */   
/*     */ 
/*     */   public List<UploadImagePojo> showTitles(Session paramSession, String articleType)
/*     */   {
/*  60 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  61 */     return articledao.showTitles(paramSession, articleType);
/*     */   }

            public List<ThoranamDataPojo> showThoranamTitles(Session paramSession, String articleType)
/*     */   {
/*  60 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  61 */     return articledao.showThoranamTitles(paramSession, articleType);
/*     */   }
            
              public  void addThoranam(Session paramSession, ThornamPojo pojo)
              {
              ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  61 */      articledao.addThoranam(paramSession, pojo);
              }


/*     */   
/*     */   public List<UploadImagePojo> showRelatedArticle(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/*  66 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  67 */     return articledao.showRelatedArticle(paramSession, uploadhomeimage);
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> showRecentArticle(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/*  72 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  73 */     return articledao.showRecentArticle(paramSession, uploadhomeimage);
/*     */   }
/*     */   
/*     */   public List<UploadImagePojo> showMostViewedArticle(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/*  78 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  79 */     return articledao.showMostViewedArticle(paramSession, uploadhomeimage);
/*     */   }
/*     */   
/*     */   public void createUser(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/*  84 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  85 */     articledao.createUser(paramSession, uploadhomeimage);
/*     */   }
/*     */   
/*     */   public void addIp(Session paramSession, UploadImagePojo uploadhomeimage)
/*     */   {
/*  90 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  91 */     articledao.addIp(paramSession, uploadhomeimage);
/*     */   }
/*     */   
/*     */   public List<IpPojo> showIps(Session paramSession)
/*     */   {
/*  96 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/*  97 */     return articledao.showIps(paramSession);
/*     */   }
/*     */   
/*     */   public List<UserPojo> showUsers(Session paramSession)
/*     */   {
/* 102 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 103 */     return articledao.showUsers(paramSession);
/*     */   }
/*     */   
/*     */   public void inactivateUser(Session paramSession, int id)
/*     */   {
/* 108 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 109 */     articledao.inactivateUser(paramSession, id);
/*     */   }
/*     */   
/*     */   public void inactivateIp(Session paramSession, int id)
/*     */   {
/* 114 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 115 */     articledao.inactivateIp(paramSession, id);
/*     */   }
/*     */   
/*     */   public void deleteAllIps(Session paramSession)
/*     */   {
/* 120 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 121 */     articledao.deleteAllIps(paramSession);
/*     */   }
/*     */   
/*     */   public void inactivateArticle(Session paramSession, int id)
/*     */   {
/* 126 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 127 */     articledao.inactivateArticle(paramSession, id);
/*     */   }
/*     */   
/*     */   public void activateArticle(Session paramSession, int id, int articleNumber)
/*     */   {
/* 132 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 133 */     articledao.activateArticle(paramSession, id, articleNumber);
/*     */   }
/*     */   
/*     */   public UploadImagePojo editArticle(Session paramSession, int id)
/*     */   {
/* 138 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 139 */     return articledao.editArticle(paramSession, id);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public void removeArticle(Session paramSession, int id)
/*     */   {
/* 146 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 147 */     articledao.removeArticle(paramSession, id);
/*     */   }
/*     */   
/*     */ 
/*     */   public void removeUser(Session paramSession, int id)
/*     */   {
/* 153 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 154 */     articledao.removeUser(paramSession, id);
/*     */   }
/*     */   
/*     */ 
/*     */   public void removeIp(Session paramSession, int id)
/*     */   {
/* 160 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 161 */     articledao.removeIp(paramSession, id);
/*     */   }
/*     */   
/*     */ 
/*     */   public void addArticleTypes(Session paramSession, UploadImagePojo uploadImagePojo)
/*     */   {
/* 167 */     ArticleTypes articletypes = new ArticleTypes();
/* 168 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 169 */     articletypes.setArticleType(uploadImagePojo.getArticleType());
/* 170 */     articledao.addArticleTypes(paramSession, articletypes);
/*     */   }
/*     */   
/*     */   public List<ArticleTypes> viewArticleTypes(Session paramSession)
/*     */   {
/* 175 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 176 */     return articledao.viewArticleTypes(paramSession);
/*     */   }
/*     */   
/*     */   public void removeArticleTypes(Session paramSession, int id)
/*     */   {
/* 181 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 182 */     articledao.removeArticleTypes(paramSession, id);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public void addRole(Session paramSession, UploadImagePojo uploadImagePojo)
/*     */   {
/* 190 */     Role role = new Role();
/* 191 */     role.setRoleName(uploadImagePojo.getRole());
/* 192 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 193 */     articledao.addRole(paramSession, role);
/*     */   }
/*     */   
/*     */   public List<Role> viewRole(Session paramSession) {
/* 197 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 198 */     return articledao.viewRole(paramSession);
/*     */   }
/*     */   
/*     */   public void removeRole(Session paramSession, int id) {
/* 202 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 203 */     articledao.removeRole(paramSession, id);
/*     */   }
/*     */   
/*     */   public void addRoleUser(Session paramSession, UploadImagePojo uploadImagePojo)
/*     */   {
/* 208 */     RoleUserMapping roleuser = new RoleUserMapping();
/* 209 */     roleuser.setRoleName(uploadImagePojo.getRole_role());
/* 210 */     roleuser.setUser(uploadImagePojo.getRole_user());
/* 211 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 212 */     articledao.addRoleUser(paramSession, roleuser);
/*     */   }
/*     */   
/*     */   public List<RoleUserMapping> viewRoleUser(Session paramSession) {
/* 216 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 217 */     return articledao.viewRoleUser(paramSession);
/*     */   }
/*     */   
/*     */   public void removeRoleUser(Session paramSession, int id) {
/* 221 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 222 */     articledao.removeRoleUser(paramSession, id);
/*     */   }
/*     */   
/*     */   public void addRoleArticle(Session paramSession, UploadImagePojo uploadImagePojo)
/*     */   {
/* 227 */     RoleArticleMapping rolearticle = new RoleArticleMapping();
/* 228 */     rolearticle.setRoleName(uploadImagePojo.getRole_role());
/* 229 */     rolearticle.setArticle(uploadImagePojo.getRole_article());
/* 230 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 231 */     articledao.addRoleArticle(paramSession, rolearticle);
/*     */   }
/*     */   
/*     */   public List<RoleArticleMapping> viewRoleArticle(Session paramSession) {
/* 235 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 236 */     return articledao.viewRoleArticle(paramSession);
/*     */   }
/*     */   
/*     */   public void removeRoleArticle(Session paramSession, int id) {
/* 240 */     ShowArticleDao articledao = new ShowArticleDaoImpl();
/* 241 */     articledao.removeRoleArticle(paramSession, id);
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\ShowArticleBusCompImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */