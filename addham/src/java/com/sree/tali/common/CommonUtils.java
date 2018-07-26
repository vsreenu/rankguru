/*    */ package com.sree.tali.common;
/*    */ 
/*    */ import com.sree.tali.hibernate.pojo.IpPojo;
/*    */ import com.sree.tali.hibernate.pojo.UserPojo;
/*    */ import com.sree.tali.pojo.UploadImagePojo;
/*    */ import com.sree.tali.util.SecurityAlgo;
/*    */ import java.io.File;
/*    */ import java.io.FileOutputStream;
/*    */ import org.apache.struts.upload.FormFile;
/*    */ 
/*    */ public class CommonUtils
/*    */ {
/*    */   public void UploadFile(FormFile paramFormFile, String paramString)
/*    */   {
/* 15 */     File localFile1 = new File(paramString);
/* 16 */     if (!localFile1.exists()) {
/* 17 */       localFile1.mkdir();
/*    */     }
/* 19 */     String str = paramFormFile.getFileName();
/* 20 */     if (!"".equals(str))
/*    */     {
/* 22 */       System.out.println("Server path:" + paramString);
/* 23 */       File localFile2 = new File(paramString, str);
/* 24 */       if (localFile2.exists()) {
/* 25 */         localFile2.delete();
/*    */       }
/*    */       try
/*    */       {
/* 29 */         FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
/* 30 */         localFileOutputStream.write(paramFormFile.getFileData());
/* 31 */         localFileOutputStream.flush();
/* 32 */         localFileOutputStream.close();
/*    */       }
/*    */       catch (Exception localException)
/*    */       {
/* 36 */         System.out.println(localException);
/*    */       }
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */   public int numberOfFiles(String path, String subfolder)
/*    */   {
/* 44 */     int noOfFiles = 0;
/* 45 */     String[] children = new File(path).list();
/* 46 */     noOfFiles = children.length;
/* 47 */     return noOfFiles;
/*    */   }
/*    */   
/*    */   public UserPojo getUserPojo(UserPojo userpojo, UploadImagePojo uploadimagePojo) throws Exception
/*    */   {
/* 52 */     userpojo.setPassWord(SecurityAlgo.generateStorngPasswordHash(uploadimagePojo.getPassword()));
/* 53 */     userpojo.setUserName(uploadimagePojo.getUsername());
/* 54 */     return userpojo;
/*    */   }
/*    */   
/*    */   public IpPojo getIpPojo(IpPojo ippojo, UploadImagePojo uploadimagePojo) throws Exception {
/* 58 */     ippojo.setIp(SecurityAlgo.generateStorngPasswordHash(uploadimagePojo.getIpaddress()));
/* 59 */     ippojo.setIpnames(uploadimagePojo.getIpnames());
/* 60 */     return ippojo;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\common\CommonUtils.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */