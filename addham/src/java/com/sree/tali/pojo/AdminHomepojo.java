/*     */ package com.sree.tali.pojo;
/*     */ 
/*     */ import org.apache.struts.action.ActionForm;
/*     */ import org.apache.struts.upload.FormFile;
/*     */ 
/*     */ public class AdminHomepojo extends ActionForm
/*     */ {
/*     */   private int id;
/*     */   private String uploadType;
/*     */   private String title;
/*     */   private FormFile image;
/*     */   private FormFile articleImage;
/*     */   private String details;
/*     */   private String folderName;
/*     */   private String filPath;
/*     */   private String password;
/*     */   private String username;
/*     */   private String repassword;
/*     */   private String ppassword;
/*     */   private String ipaddress;
/*     */   private String ippassword;
/*     */   
/*     */   public FormFile getArticleImage()
/*     */   {
/*  25 */     return this.articleImage;
/*     */   }
/*     */   
/*     */   public void setArticleImage(FormFile articleImage) {
/*  29 */     this.articleImage = articleImage;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getIpaddress()
/*     */   {
/*  35 */     return this.ipaddress;
/*     */   }
/*     */   
/*     */   public void setIpaddress(String ipaddress) {
/*  39 */     this.ipaddress = ipaddress;
/*     */   }
/*     */   
/*     */   public String getIppassword() {
/*  43 */     return this.ippassword;
/*     */   }
/*     */   
/*     */   public void setIppassword(String ippassword) {
/*  47 */     this.ippassword = ippassword;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public String getPassword()
/*     */   {
/*  54 */     return this.password;
/*     */   }
/*     */   
/*     */   public void setPassword(String password) {
/*  58 */     this.password = password;
/*     */   }
/*     */   
/*     */   public String getUsername() {
/*  62 */     return this.username;
/*     */   }
/*     */   
/*     */   public void setUsername(String username) {
/*  66 */     this.username = username;
/*     */   }
/*     */   
/*     */   public String getRepassword() {
/*  70 */     return this.repassword;
/*     */   }
/*     */   
/*     */   public void setRepassword(String repassword) {
/*  74 */     this.repassword = repassword;
/*     */   }
/*     */   
/*     */   public String getPpassword() {
/*  78 */     return this.ppassword;
/*     */   }
/*     */   
/*     */   public void setPpassword(String ppassword) {
/*  82 */     this.ppassword = ppassword;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public int getId()
/*     */   {
/*  92 */     return this.id;
/*     */   }
/*     */   
/*     */   public void setId(int paramInt)
/*     */   {
/*  97 */     this.id = paramInt;
/*     */   }
/*     */   
/*     */   public String getFilPath()
/*     */   {
/* 102 */     return this.filPath;
/*     */   }
/*     */   
/*     */   public void setFilPath(String paramString)
/*     */   {
/* 107 */     this.filPath = paramString;
/*     */   }
/*     */   
/*     */   public String getFolderName()
/*     */   {
/* 112 */     return this.folderName;
/*     */   }
/*     */   
/*     */   public void setFolderName(String paramString)
/*     */   {
/* 117 */     this.folderName = paramString;
/*     */   }
/*     */   
/*     */   public String getUploadType()
/*     */   {
/* 122 */     return this.uploadType;
/*     */   }
/*     */   
/*     */   public void setUploadType(String paramString)
/*     */   {
/* 127 */     this.uploadType = paramString;
/*     */   }
/*     */   
/*     */   public String getTitle()
/*     */   {
/* 132 */     return this.title;
/*     */   }
/*     */   
/*     */   public void setTitle(String paramString)
/*     */   {
/* 137 */     this.title = paramString;
/*     */   }
/*     */   
/*     */   public FormFile getImage()
/*     */   {
/* 142 */     return this.image;
/*     */   }
/*     */   
/*     */   public void setImage(FormFile paramFormFile)
/*     */   {
/* 147 */     this.image = paramFormFile;
/*     */   }
/*     */   
/*     */   public String getDetails()
/*     */   {
/* 152 */     return this.details;
/*     */   }
/*     */   
/*     */   public void setDetails(String paramString)
/*     */   {
/* 157 */     this.details = paramString;
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\pojo\AdminHomepojo.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */