/*     */ package com.sree.tali.pojo;
/*     */ 
/*     */ import java.util.ArrayList;
/*     */ import java.util.List;
/*     */ import javax.servlet.http.HttpServletRequest;
/*     */ import org.apache.struts.action.ActionForm;
/*     */ import org.apache.struts.action.ActionMapping;
/*     */ import org.apache.struts.upload.FormFile;
/*     */ 
/*     */ public class UploadImagePojo
/*     */   extends ActionForm
/*     */ {
/*     */   private String folderName;
/*     */   private String subfolderName;
/*     */   private String directoryname;
/*     */   private String articleType;
/*     */   private FormFile image;
/*     */   private FormFile image1;
/*     */   private FormFile image2;
/*     */   private FormFile image3;
/*  21 */   private List<FormFile> imageList = new ArrayList();
/*  22 */   private List<String> folders = new ArrayList();
/*  23 */   private List<String> subFolders = new ArrayList();
/*  24 */   private List<String> articlList = new ArrayList();
/*  25 */   private List<String> subArticleList = new ArrayList();
/*     */   private String filPath;
/*     */   private String imagePath;
/*     */   private String articleSubType;
/*     */   private String content;
/*     */   private int id;
/*     */   private String title;
/*     */   private String description;
/*     */   private int count;
/*     */   private String password;
/*     */   private String username;
/*     */   private String repassword;
/*     */   private String ppassword;
/*     */   private String ipaddress;
/*     */   private String ippassword;
/*     */   private String ipnames;
/*     */   private String viewArticleType;
/*     */   private String viewStatus;
/*  43 */   private int articleNumber = 0;
/*     */   private String createddate;
/*     */   private String metaData;
/*     */   private String url;
/*     */   private String role;
/*     */   private String role_user;
/*     */   private String role_role;
/*     */   private String role_article;
/*     */   private List<String> role_user_list;
/*     */   private List<String> role_article_list;
/*     */   private List<String> role_role_list;
/*     */   private FormFile articleImage;
/*     */   private String status;
/*     */   
/*     */   public String getImagePath() {
/*  58 */     return this.imagePath;
/*     */   }
/*     */   
/*     */   public void setImagePath(String imagePath) {
/*  62 */     this.imagePath = imagePath;
/*     */   }
/*     */   
/*     */ 
/*     */   public FormFile getArticleImage()
/*     */   {
/*  68 */     return this.articleImage;
/*     */   }
/*     */   
/*     */   public void setArticleImage(FormFile articleImage) {
/*  72 */     this.articleImage = articleImage;
/*     */   }
/*     */   
/*     */ 
/*     */   public List<String> getRole_user_list()
/*     */   {
/*  78 */     return this.role_user_list;
/*     */   }
/*     */   
/*     */   public void setRole_user_list(List<String> role_user_list) {
/*  82 */     this.role_user_list = role_user_list;
/*     */   }
/*     */   
/*     */   public List<String> getRole_article_list() {
/*  86 */     return this.role_article_list;
/*     */   }
/*     */   
/*     */   public void setRole_article_list(List<String> role_article_list) {
/*  90 */     this.role_article_list = role_article_list;
/*     */   }
/*     */   
/*     */   public List<String> getRole_role_list() {
/*  94 */     return this.role_role_list;
/*     */   }
/*     */   
/*     */   public void setRole_role_list(List<String> role_role_list) {
/*  98 */     this.role_role_list = role_role_list;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getRole()
/*     */   {
/* 104 */     return this.role;
/*     */   }
/*     */   
/*     */   public void setRole(String role) {
/* 108 */     this.role = role;
/*     */   }
/*     */   
/*     */   public String getRole_user() {
/* 112 */     return this.role_user;
/*     */   }
/*     */   
/*     */   public void setRole_user(String role_user) {
/* 116 */     this.role_user = role_user;
/*     */   }
/*     */   
/*     */   public String getRole_role() {
/* 120 */     return this.role_role;
/*     */   }
/*     */   
/*     */   public void setRole_role(String role_role) {
/* 124 */     this.role_role = role_role;
/*     */   }
/*     */   
/*     */   public String getRole_article() {
/* 128 */     return this.role_article;
/*     */   }
/*     */   
/*     */   public void setRole_article(String role_article) {
/* 132 */     this.role_article = role_article;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getUrl()
/*     */   {
/* 138 */     return this.url;
/*     */   }
/*     */   
/*     */   public void setUrl(String url) {
/* 142 */     this.url = url;
/*     */   }
/*     */   
/*     */   public String getMetaData() {
/* 146 */     return this.metaData;
/*     */   }
/*     */   
/*     */   public void setMetaData(String metaData) {
/* 150 */     this.metaData = metaData;
/*     */   }
/*     */   
/*     */   public String getCreateddate() {
/* 154 */     return this.createddate;
/*     */   }
/*     */   
/*     */   public void setCreateddate(String createddate) {
/* 158 */     this.createddate = createddate;
/*     */   }
/*     */   
/*     */   public void reset(ActionMapping mapping, HttpServletRequest request)
/*     */   {
/* 163 */     this.username = null;
/* 164 */     this.password = null;
/* 165 */     this.articleType = null;
/* 166 */     this.description = null;
/* 167 */     this.title = null;
/* 168 */     this.directoryname = null;
/* 169 */     this.subfolderName = null;
/* 170 */     this.folderName = null;
/* 171 */     this.repassword = null;
/* 172 */     this.ipaddress = null;
/* 173 */     this.ipnames = null;
/* 174 */     this.ippassword = null;
/* 175 */     this.ppassword = null;
/* 176 */     this.image = null;
/* 177 */     this.image1 = null;
/* 178 */     this.image2 = null;
/* 179 */     this.image3 = null;
/* 180 */     this.url = null;
/* 181 */     this.articleNumber = 0;
/*     */   }
/*     */   
/*     */   public FormFile getImage1() {
/* 185 */     return this.image1;
/*     */   }
/*     */   
/*     */   public void setImage1(FormFile image1) {
/* 189 */     this.image1 = image1;
/*     */   }
/*     */   
/*     */   public FormFile getImage2() {
/* 193 */     return this.image2;
/*     */   }
/*     */   
/*     */   public void setImage2(FormFile image2) {
/* 197 */     this.image2 = image2;
/*     */   }
/*     */   
/*     */   public FormFile getImage3() {
/* 201 */     return this.image3;
/*     */   }
/*     */   
/*     */   public void setImage3(FormFile image3) {
/* 205 */     this.image3 = image3;
/*     */   }
/*     */   
/*     */   public String getIpnames()
/*     */   {
/* 210 */     return this.ipnames;
/*     */   }
/*     */   
/*     */   public void setIpnames(String ipnames) {
/* 214 */     this.ipnames = ipnames;
/*     */   }
/*     */   
/*     */ 
/*     */   public int getArticleNumber()
/*     */   {
/* 220 */     return this.articleNumber;
/*     */   }
/*     */   
/*     */   public void setArticleNumber(int articleNumber) {
/* 224 */     this.articleNumber = articleNumber;
/*     */   }
/*     */   
/*     */   public String getViewArticleType() {
/* 228 */     return this.viewArticleType;
/*     */   }
/*     */   
/*     */   public void setViewArticleType(String viewArticleType) {
/* 232 */     this.viewArticleType = viewArticleType;
/*     */   }
/*     */   
/*     */   public String getViewStatus() {
/* 236 */     return this.viewStatus;
/*     */   }
/*     */   
/*     */   public void setViewStatus(String viewStatus) {
/* 240 */     this.viewStatus = viewStatus;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getPassword()
/*     */   {
/* 246 */     return this.password;
/*     */   }
/*     */   
/*     */   public void setPassword(String password) {
/* 250 */     this.password = password;
/*     */   }
/*     */   
/*     */   public String getUsername() {
/* 254 */     return this.username;
/*     */   }
/*     */   
/*     */   public void setUsername(String username) {
/* 258 */     this.username = username;
/*     */   }
/*     */   
/*     */   public String getRepassword() {
/* 262 */     return this.repassword;
/*     */   }
/*     */   
/*     */   public void setRepassword(String repassword) {
/* 266 */     this.repassword = repassword;
/*     */   }
/*     */   
/*     */   public String getPpassword() {
/* 270 */     return this.ppassword;
/*     */   }
/*     */   
/*     */   public void setPpassword(String ppassword) {
/* 274 */     this.ppassword = ppassword;
/*     */   }
/*     */   
/*     */   public String getIpaddress() {
/* 278 */     return this.ipaddress;
/*     */   }
/*     */   
/*     */   public void setIpaddress(String ipaddress) {
/* 282 */     this.ipaddress = ipaddress;
/*     */   }
/*     */   
/*     */   public String getIppassword() {
/* 286 */     return this.ippassword;
/*     */   }
/*     */   
/*     */   public void setIppassword(String ippassword) {
/* 290 */     this.ippassword = ippassword;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getStatus()
/*     */   {
/* 296 */     return this.status;
/*     */   }
/*     */   
/*     */   public void setStatus(String status) {
/* 300 */     this.status = status;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public int getCount()
/*     */   {
/* 307 */     return this.count;
/*     */   }
/*     */   
/*     */   public void setCount(int count) {
/* 311 */     this.count = count;
/*     */   }
/*     */   
/*     */   public String getDescription() {
/* 315 */     return this.description;
/*     */   }
/*     */   
/*     */   public void setDescription(String description) {
/* 319 */     this.description = description;
/*     */   }
/*     */   
/*     */   public int getId() {
/* 323 */     return this.id;
/*     */   }
/*     */   
/*     */   public void setId(int id) {
/* 327 */     this.id = id;
/*     */   }
/*     */   
/*     */   public String getTitle() {
/* 331 */     return this.title;
/*     */   }
/*     */   
/*     */   public void setTitle(String title) {
/* 335 */     this.title = title;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public List<String> getArticlList()
/*     */   {
/* 345 */     return this.articlList;
/*     */   }
/*     */   
/*     */   public void setArticlList(List<String> articlList) {
/* 349 */     this.articlList = articlList;
/*     */   }
/*     */   
/*     */   public List<String> getSubArticleList() {
/* 353 */     return this.subArticleList;
/*     */   }
/*     */   
/*     */   public void setSubArticleList(List<String> subArticleList) {
/* 357 */     this.subArticleList = subArticleList;
/*     */   }
/*     */   
/*     */   public String getContent()
/*     */   {
/* 362 */     return this.content;
/*     */   }
/*     */   
/*     */   public void setContent(String content) {
/* 366 */     this.content = content;
/*     */   }
/*     */   
/*     */   public String getArticleSubType() {
/* 370 */     return this.articleSubType;
/*     */   }
/*     */   
/*     */   public void setArticleSubType(String articleSubType) {
/* 374 */     this.articleSubType = articleSubType;
/*     */   }
/*     */   
/*     */ 
/*     */   public String getArticleType()
/*     */   {
/* 380 */     return this.articleType;
/*     */   }
/*     */   
/*     */   public void setArticleType(String articleType) {
/* 384 */     this.articleType = articleType;
/*     */   }
/*     */   
/*     */   public String getFilPath() {
/* 388 */     return this.filPath;
/*     */   }
/*     */   
/*     */   public void setFilPath(String filPath) {
/* 392 */     this.filPath = filPath;
/*     */   }
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
/*     */ 
/*     */ 
/*     */   public List<String> getSubFolders()
/*     */   {
/* 409 */     return this.subFolders;
/*     */   }
/*     */   
/*     */   public void setSubFolders(List<String> subFolders)
/*     */   {
/* 414 */     this.subFolders = subFolders;
/*     */   }
/*     */   
/*     */   public String getFolderName()
/*     */   {
/* 419 */     return this.folderName;
/*     */   }
/*     */   
/*     */   public void setFolderName(String folderName)
/*     */   {
/* 424 */     this.folderName = folderName;
/*     */   }
/*     */   
/*     */   public String getSubfolderName()
/*     */   {
/* 429 */     return this.subfolderName;
/*     */   }
/*     */   
/*     */   public void setSubfolderName(String subfolderName)
/*     */   {
/* 434 */     this.subfolderName = subfolderName;
/*     */   }
/*     */   
/*     */   public String getDirectoryname()
/*     */   {
/* 439 */     return this.directoryname;
/*     */   }
/*     */   
/*     */   public void setDirectoryname(String directoryname)
/*     */   {
/* 444 */     this.directoryname = directoryname;
/*     */   }
/*     */   
/*     */   public FormFile getImage()
/*     */   {
/* 449 */     return this.image;
/*     */   }
/*     */   
/*     */   public void setImage(FormFile image)
/*     */   {
/* 454 */     this.image = image;
/*     */   }
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
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public List<String> getFolders()
/*     */   {
/* 474 */     return this.folders;
/*     */   }
/*     */   
/*     */   public void setFolders(List<String> folders)
/*     */   {
/* 479 */     this.folders = folders;
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\pojo\UploadImagePojo.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */