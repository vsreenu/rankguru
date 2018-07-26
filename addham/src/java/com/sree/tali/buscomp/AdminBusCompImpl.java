/*    */ package com.sree.tali.buscomp;
/*    */ 
/*    */ import com.sree.tali.common.CommonUtils;
/*    */ import com.sree.tali.dao.homepage.impl.AdminDao;
/*    */ import com.sree.tali.dao.homepage.impl.IAdminDao;
/*    */ import com.sree.tali.dao.homepage.impl.IUploadHomeDao;
/*    */ import com.sree.tali.dao.homepage.impl.UploadHomeDAO;
/*    */ import com.sree.tali.pojo.AdminHomepojo;
/*    */ import com.sree.tali.pojo.UploadImagePojo;
/*    */ import org.apache.struts.upload.FormFile;
/*    */ import org.hibernate.Session;
/*    */ 
/*    */ public class AdminBusCompImpl
/*    */   implements AdminBusComp
/*    */ {
/* 16 */   IUploadHomeDao uploadDao = new UploadHomeDAO();
/*    */   
/*    */   public void UploadHomeAction(AdminHomepojo paramAdminHomepojo, Session paramSession)
/*    */   {
/* 20 */     String str1 = paramAdminHomepojo.getFilPath();
/* 21 */     FormFile localFormFile = paramAdminHomepojo.getImage();
/* 22 */     CommonUtils localCommonUtils = new CommonUtils();
/* 23 */     String str2 = paramAdminHomepojo.getUploadType().toUpperCase() + "/" + paramAdminHomepojo.getFolderName() + "/" + localFormFile.getFileName();
/* 24 */     paramAdminHomepojo.setFilPath(str2);
/* 25 */     this.uploadDao.save(paramAdminHomepojo, paramSession);
/* 26 */     localCommonUtils.UploadFile(localFormFile, str1);
/*    */   }
/*    */   
/*    */   public void UploadArticle(UploadImagePojo localAdminHomepojo, Session paramSession)
/*    */   {
/* 31 */     IAdminDao admindao = new AdminDao();
/* 32 */     admindao.save(localAdminHomepojo, paramSession);
/*    */   }
/*    */   
/*    */   public int getArticleNumber(Session paramSession) {
/* 36 */     IAdminDao admindao = new AdminDao();
/* 37 */     return admindao.getArticleNumber(paramSession);
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\AdminBusCompImpl.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */