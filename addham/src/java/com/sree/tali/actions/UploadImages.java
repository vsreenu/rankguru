/*     */ package com.sree.tali.actions;
/*     */ 
/*     */ import com.sree.tali.buscomp.AdminBusComp;
/*     */ import com.sree.tali.buscomp.AdminBusCompImpl;
/*     */ import com.sree.tali.buscomp.ShowArticleBusComp;
/*     */ import com.sree.tali.buscomp.ShowArticleBusCompImpl;
/*     */ import com.sree.tali.common.CommonUtils;
/*     */ import com.sree.tali.hibernate.pojo.IpPojo;
/*     */ import com.sree.tali.hibernate.pojo.UserPojo;
/*     */ import com.sree.tali.plugin.HibernatePlugin;
/*     */ import com.sree.tali.pojo.ArticleTypes;
/*     */ import com.sree.tali.pojo.LoginForm;
/*     */ import com.sree.tali.pojo.Role;
/*     */ import com.sree.tali.pojo.RoleArticleMapping;
/*     */ import com.sree.tali.pojo.RoleUserMapping;
/*     */ import com.sree.tali.pojo.UploadImagePojo;
/*     */ import com.sree.tali.util.SecurityAlgo;
/*     */ import java.io.File;
/*     */ import java.io.PrintStream;
/*     */ import java.sql.Connection;
/*     */ import java.sql.ResultSet;
/*     */ import java.sql.Statement;
/*     */ import java.text.DateFormat;
/*     */ import java.util.ArrayList;
/*     */ import java.util.Date;
/*     */ import java.util.List;
/*     */ import javax.servlet.ServletContext;
/*     */ import javax.servlet.http.HttpServletRequest;
/*     */ import javax.servlet.http.HttpServletResponse;
/*     */ import javax.servlet.http.HttpSession;
/*     */ import org.apache.struts.action.ActionForm;
/*     */ import org.apache.struts.action.ActionForward;
/*     */ import org.apache.struts.action.ActionMapping;
/*     */ import org.apache.struts.action.ActionServlet;
/*     */ import org.apache.struts.actions.DispatchAction;
/*     */ import org.apache.struts.upload.FormFile;
/*     */ import org.hibernate.Query;
/*     */ import org.hibernate.Session;
/*     */ import org.hibernate.SessionFactory;
/*     */ import org.hibernate.internal.SessionImpl;
/*     */ 
/*     */ public class UploadImages extends DispatchAction
/*     */ {
/*     */   private static final String SUCCESS = "success";
/*     */   
/*     */   public ActionForward uploadImagePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception
/*     */   {
/*  48 */     String basepath = getServlet().getServletContext().getRealPath("/");
/*  49 */     List<String> list = new ArrayList();
/*  50 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/*  51 */     String[] children = new File(basepath).list();
/*  52 */     for (String subdir : children) {
/*  53 */       if (new File(getServlet().getServletContext().getRealPath("/") + subdir).isDirectory()) {
/*  54 */         list.add(subdir);
/*     */       }
/*     */     }
/*  57 */     uploadimagepojo.setFolders(list);
/*  58 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/*  59 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/*  60 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/*  61 */     return mapping.findForward("uloadimages");
/*     */   }
/*     */   
/*     */   public ActionForward addImagePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/*  67 */     String basepath = getServlet().getServletContext().getRealPath("/");
/*  68 */     List<String> list = new ArrayList();
/*  69 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/*  70 */     String[] children = new File(basepath).list();
/*  71 */     for (String subdir : children) {
/*  72 */       if (new File(getServlet().getServletContext().getRealPath("/") + subdir).isDirectory()) {
/*  73 */         list.add(subdir);
/*     */       }
/*     */     }
/*  76 */     uploadimagepojo.setFolders(list);
/*  77 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/*  78 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/*  79 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/*  80 */     return mapping.findForward("addimages");
/*     */   }
/*     */   
/*     */   public ActionForward getSubfolders(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/*  86 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/*  87 */     String basepath = getServlet().getServletContext().getRealPath("/") + uploadimagepojo.getFolderName();
/*  88 */     List<String> list = new ArrayList();
/*  89 */     String[] children = new File(basepath).list();
/*  90 */     for (String subdir : children) {
/*  91 */       if (new File(basepath + File.separator + subdir).isDirectory()) {
/*  92 */         list.add(subdir);
/*     */       }
/*     */     }
/*  95 */     uploadimagepojo.setSubFolders(list);
/*  96 */     return mapping.findForward("uloadimages");
/*     */   }
/*     */   
/*     */   public ActionForward getSubArticleTypes(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 102 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 103 */     uploadimagepojo.setSubArticleList(getSubArticleTypes(uploadimagepojo.getArticleType()));
/* 104 */     return mapping.findForward("uloadimages");
/*     */   }
/*     */   
/*     */   public ActionForward uploadImages(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 110 */     AdminBusComp buscomp = new AdminBusCompImpl();
/* 111 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 112 */     CommonUtils localCommonUtils = new CommonUtils();
/* 113 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/*     */     
/* 115 */     String temp = localAdminHomepojo.getFolderName() + File.separator + localAdminHomepojo.getSubfolderName() + File.separator + localAdminHomepojo.getDirectoryname();
/* 116 */     System.out.println(temp);
/* 117 */     String path = temp.replace("/null", "").replaceAll("\\s+", "");
/* 118 */     System.out.println(path);
/* 119 */     String str = getServlet().getServletContext().getRealPath(File.separator) + path;
/*     */     
/* 121 */     if (localAdminHomepojo.getImage() != null) {
/* 122 */       localAdminHomepojo.setFilPath(path + File.separator + localAdminHomepojo.getImage().getFileName());
/*     */     }
/* 124 */     if (localAdminHomepojo.getArticleImage() != null) {
/* 125 */       localAdminHomepojo.setImagePath(path + File.separator + localAdminHomepojo.getArticleImage().getFileName());
/*     */     }
/* 127 */     System.out.println(localAdminHomepojo.getFilPath());
/*     */     
/* 129 */     localAdminHomepojo.setStatus("I");
/*     */     
/* 131 */     DateFormat dateFormat = new java.text.SimpleDateFormat("dd-MMM-yyyy");
/* 132 */     Date date = new Date();
/* 133 */     String datestring = dateFormat.format(date);
/* 134 */     System.out.println("date string is -------------->" + datestring);
/* 135 */     localAdminHomepojo.setCreateddate(datestring);
/* 136 */     buscomp.UploadArticle(localAdminHomepojo, localSessionFactory.openSession());
/* 137 */     if (localAdminHomepojo.getImage() != null) {
/* 138 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage(), str);
/* 139 */       localCommonUtils.UploadFile(localAdminHomepojo.getArticleImage(), str);
/*     */     }
/* 141 */     if (localAdminHomepojo.getArticleType().equalsIgnoreCase("IMAGES"))
/*     */     {
/* 143 */       ShowArticleBusComp buscomp1 = new ShowArticleBusCompImpl();
/* 144 */       List<UploadImagePojo> images = buscomp1.showTitles(localSessionFactory.openSession(), "IMAGES");
/* 145 */       getServlet().getServletContext().setAttribute("images", images);
/*     */     }
/* 147 */     return mapping.findForward("uloadimages");
/*     */   }
/*     */   
/*     */   public ActionForward addImages(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 153 */     AdminBusComp buscomp = new AdminBusCompImpl();
/* 154 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 155 */     CommonUtils localCommonUtils = new CommonUtils();
/*     */     
/*     */ 
/*     */ 
/* 159 */     String temp = localAdminHomepojo.getFolderName() + File.separator + localAdminHomepojo.getSubfolderName() + File.separator + localAdminHomepojo.getDirectoryname();
/* 160 */     System.out.println(temp);
/* 161 */     String path = temp.replace("/null", "").replaceAll("\\s+", "");
/* 162 */     System.out.println(path);
/* 163 */     String str = getServlet().getServletContext().getRealPath(File.separator) + path;
/*     */     
/* 165 */     localAdminHomepojo.setFilPath(path + File.separator + localAdminHomepojo.getImage().getFileName());
/* 166 */     System.out.println(localAdminHomepojo.getFilPath());
/*     */     
/*     */ 
/*     */ 
/*     */ 
/* 171 */     localCommonUtils.UploadFile(localAdminHomepojo.getImage(), str);
/* 172 */     if (localAdminHomepojo.getImage1() != null)
/* 173 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage1(), str);
/* 174 */     if (localAdminHomepojo.getImage2() != null)
/* 175 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage2(), str);
/* 176 */     if (localAdminHomepojo.getImage3() != null)
/* 177 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage3(), str);
/* 178 */     return mapping.findForward("addimages");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward getSubfoldersForImages(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 185 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 186 */     String basepath = getServlet().getServletContext().getRealPath(File.separator) + uploadimagepojo.getFolderName();
/* 187 */     List<String> list = new ArrayList();
/* 188 */     String[] children = new File(basepath).list();
/* 189 */     for (String subdir : children) {
/* 190 */       if (new File(basepath + File.separator + subdir).isDirectory()) {
/* 191 */         list.add(subdir);
/*     */       }
/*     */     }
/* 194 */     uploadimagepojo.setSubFolders(list);
/* 195 */     return mapping.findForward("addimages");
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   private List<String> getArticleTypes(String userName, Session session)
/*     */   {
/* 202 */     List<String> articleTypesList = new ArrayList();
/*     */     try
/*     */     {
/* 205 */       Connection localConnection = ((SessionImpl)session).connection();
/* 206 */       String qry = "select distinct ra.article_name from role_user ru , role_article ra where ru.role_name=ra.role_name and ru.user_name = '" + userName.trim() + "'";
/* 207 */       System.out.println(qry);
/* 208 */       Statement localStatement = localConnection.createStatement();
/* 209 */       ResultSet localResultSet = localStatement.executeQuery(qry.toUpperCase());
/* 210 */       while (localResultSet.next())
/*     */       {
/* 212 */         articleTypesList.add(localResultSet.getString(1));
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 217 */       localException.printStackTrace();
/*     */     }
/*     */     
/* 220 */     return articleTypesList;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public List<String> getRolesForUser(String userName, Session session)
/*     */   {
/* 228 */     List<String> userRolesList = new ArrayList();
/*     */     
/*     */ 
/*     */     try
/*     */     {
/* 233 */       Connection localConnection = ((SessionImpl)session).connection();
/* 234 */       String qry = "select distinct ru.role_name from role_user ru  where  ru.user_name = '" + userName.trim() + "'";
/* 235 */       Statement localStatement = localConnection.createStatement();
/* 236 */       ResultSet localResultSet = localStatement.executeQuery(qry.toUpperCase());
/* 237 */       while (localResultSet.next())
/*     */       {
/* 239 */         userRolesList.add(localResultSet.getString(1));
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 244 */       localException.printStackTrace();
/*     */     }
/*     */     
/* 247 */     return userRolesList;
/*     */   }
/*     */   
/*     */ 
/*     */   private List<String> getSubArticleTypes(String articleType)
/*     */   {
/* 253 */     List<String> subArticleTypesList = new ArrayList();
/* 254 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 255 */     Session session = localSessionFactory.openSession();
/* 256 */     String qry = "from SubArticleTypes where articleType ='" + articleType + "'";
/* 257 */     Query query = session.createQuery(qry);
/* 258 */     List<ArticleTypes> articletypes = query.list();
/* 259 */     for (ArticleTypes type : articletypes)
/*     */     {
/* 261 */       subArticleTypesList.add(type.getArticleType());
/*     */     }
/* 263 */     return subArticleTypesList;
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward viewArticlesPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 270 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 271 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 272 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 273 */     System.out.println(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 274 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 275 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward viewArticles(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 282 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 283 */     UploadImagePojo uploimagepojo = (UploadImagePojo)form;
/* 284 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 285 */     List<UploadImagePojo> viewarticles = buscomp.viewArticles(localSessionFactory.openSession(), uploimagepojo);
/* 286 */     System.out.println("articles size=========" + viewarticles.size());
/* 287 */     request.getSession().setAttribute("viewarticles", viewarticles);
/* 288 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward createUserPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 295 */     if (!authorisedUser()) return mapping.findForward("adduser");
/* 296 */     return mapping.findForward("adduser");
/*     */   }
/*     */   
/*     */   private boolean authorisedUser() {
/* 300 */     return true;
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward createUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 307 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 308 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 309 */     new SecurityAlgo(); if (SecurityAlgo.validatePassword(localAdminHomepojo.getPpassword(), "1000:5b42403565336335386139:85000dd473f02424d45e59b95c3dfb8b0225a3710d4f306b49bfe5fa6a282d729118352b9ad38314ffc6df5affe50e2ea9e6129b749353f19fc7ae2270ed738a"))
/*     */     {
/* 311 */       SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 312 */       buscomp.createUser(localSessionFactory.openSession(), localAdminHomepojo);
/*     */     }
/* 314 */     return mapping.findForward("adduser");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward addIpPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 321 */     return mapping.findForward("addip");
/*     */   }
/*     */   
/*     */   public ActionForward addIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 327 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 328 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 329 */     new SecurityAlgo(); if (SecurityAlgo.validatePassword(localAdminHomepojo.getIppassword(), "1000:5b42403639623862383130:c5b284fdd7f12e3d123e97d01715e371b5a15b95a2689f76c88199573bfd2de785844ac1a97659985e43b7228f4c433d39094a3a45200f2ccd7483e670b7b1aa"))
/*     */     {
/* 331 */       SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 332 */       buscomp.addIp(localSessionFactory.openSession(), localAdminHomepojo);
/*     */     }
/* 334 */     return mapping.findForward("addip");
/*     */   }
/*     */   
/*     */   public ActionForward viewIncativeArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 340 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 341 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 342 */     List<UploadImagePojo> inactivearticles = buscomp.showInactiveArticle(localSessionFactory.openSession());
/* 343 */     request.setAttribute("inactivearticles", inactivearticles);
/* 344 */     return mapping.findForward("showarticles");
/*     */   }
/*     */   
/*     */   public ActionForward updateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 350 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 351 */     UploadImagePojo pojo = (UploadImagePojo)form;
/* 352 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 353 */     buscomp.updateArticle(localSessionFactory.openSession(), pojo);
/* 354 */     if (pojo.getImage() != null) {
/* 355 */       CommonUtils localCommonUtils = new CommonUtils();
/* 356 */       String temp = pojo.getFolderName() + File.separator + pojo.getSubfolderName() + File.separator + pojo.getDirectoryname();
/* 357 */       System.out.println(temp);
/* 358 */       String path = temp.replace("/null", "").replaceAll("\\s+", "");
/* 359 */       System.out.println(path);
/* 360 */       String str = getServlet().getServletContext().getRealPath(File.separator) + path;
/* 361 */       localCommonUtils.UploadFile(pojo.getImage(), str);
/*     */     }
/* 363 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward editArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 369 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 370 */     int id = Integer.parseInt(request.getParameter("id"));
/* 371 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 372 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 373 */     UploadImagePojo uploadimagepojo1 = buscomp.editArticle(localSessionFactory.openSession(), id);
/* 374 */     uploadimagepojo.setTitle(uploadimagepojo1.getTitle());
/* 375 */     uploadimagepojo.setDescription(uploadimagepojo1.getDescription());
/* 376 */     uploadimagepojo.setFolderName(uploadimagepojo1.getFolderName());
/* 377 */     uploadimagepojo.setSubfolderName(uploadimagepojo1.getSubfolderName());
/* 378 */     uploadimagepojo.setArticleType(uploadimagepojo1.getArticleType());
/* 379 */     uploadimagepojo.setArticleSubType(uploadimagepojo1.getArticleSubType());
/* 380 */     uploadimagepojo.setArticleNumber(uploadimagepojo1.getArticleNumber());
/* 381 */     uploadimagepojo.setId(uploadimagepojo1.getId());
/* 382 */     uploadimagepojo.setFilPath(uploadimagepojo1.getFilPath());
/* 383 */     uploadimagepojo.setStatus(uploadimagepojo1.getStatus());
/* 384 */     uploadimagepojo.setUrl(uploadimagepojo1.getUrl());
/* 385 */     uploadimagepojo.setImagePath(uploadimagepojo1.getImagePath());
/* 386 */     String basepath = getServlet().getServletContext().getRealPath(File.separator);
/* 387 */     List<String> list = new ArrayList();
/* 388 */     String[] children = new File(basepath).list();
/* 389 */     for (String subdir : children) {
/* 390 */       if (new File(getServlet().getServletContext().getRealPath(File.separator) + subdir).isDirectory()) {
/* 391 */         list.add(subdir);
/*     */       }
/*     */     }
/* 394 */     uploadimagepojo.setFolders(list);
/* 395 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 396 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 397 */     String basepath1 = getServlet().getServletContext().getRealPath("/") + uploadimagepojo.getFolderName();
/* 398 */     Object list1 = new ArrayList();
/* 399 */     String[] children1 = new File(basepath1).list();
/* 400 */     for (String subdir : children1) {
/* 401 */       if (new File(basepath1 + File.separator + subdir).isDirectory()) {
/* 402 */         ((List)list1).add(subdir);
/*     */       }
/*     */     }
/* 405 */     uploadimagepojo.setSubFolders((List)list1);
/* 406 */     return mapping.findForward("updatearticle");
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public ActionForward showIps(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 413 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 414 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 415 */     List<IpPojo> ippojolist = buscomp.showIps(localSessionFactory.openSession());
/* 416 */     System.out.print("user pojo list ============== " + ippojolist.size());
/* 417 */     request.setAttribute("ippojolist", ippojolist);
/* 418 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward showUsers(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 422 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 423 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 424 */     List<UserPojo> userpojolist = buscomp.showUsers(localSessionFactory.openSession());
/* 425 */     System.out.print("user pojo list ============== " + userpojolist.size());
/* 426 */     request.setAttribute("userpojolist", userpojolist);
/* 427 */     return mapping.findForward("showusers");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 431 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 432 */     int id = Integer.parseInt(request.getParameter("id"));
/* 433 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 434 */     buscomp.inactivateUser(localSessionFactory.openSession(), id);
/* 435 */     List<UserPojo> userpojolist = buscomp.showUsers(localSessionFactory.openSession());
/* 436 */     request.setAttribute("userpojolist", userpojolist);
/* 437 */     return mapping.findForward("showusers");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 442 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 443 */     int id = Integer.parseInt(request.getParameter("id"));
/* 444 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 445 */     buscomp.inactivateIp(localSessionFactory.openSession(), id);
/* 446 */     List<IpPojo> ippojolist = buscomp.showIps(localSessionFactory.openSession());
/* 447 */     request.setAttribute("ippojolist", ippojolist);
/* 448 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward deleteAllIps(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 452 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 453 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 454 */     buscomp.deleteAllIps(localSessionFactory.openSession());
/* 455 */     List<IpPojo> ippojo = buscomp.showIps(localSessionFactory.openSession());
/* 456 */     request.setAttribute("ippojo", ippojo);
/* 457 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 462 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 463 */     int id = Integer.parseInt(request.getParameter("id"));
/* 464 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 465 */     buscomp.inactivateArticle(localSessionFactory.openSession(), id);
/* 466 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward activateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 471 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 472 */     AdminBusComp adminbuscomp = new AdminBusCompImpl();
/* 473 */     int id = Integer.parseInt(request.getParameter("id"));
/* 474 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 475 */     int articleNumber = adminbuscomp.getArticleNumber(localSessionFactory.openSession());
/*     */     
/*     */ 
/*     */ 
/* 479 */     buscomp.activateArticle(localSessionFactory.openSession(), id, articleNumber);
/* 480 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward removeArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 486 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 487 */     int id = Integer.parseInt(request.getParameter("id"));
/* 488 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 489 */     buscomp.removeArticle(localSessionFactory.openSession(), id);
/* 490 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward removeUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 495 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 496 */     int id = Integer.parseInt(request.getParameter("id"));
/* 497 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 498 */     buscomp.removeUser(localSessionFactory.openSession(), id);
/* 499 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward removeIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 504 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 505 */     int id = Integer.parseInt(request.getParameter("id"));
/* 506 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 507 */     buscomp.removeUser(localSessionFactory.openSession(), id);
/* 508 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward logout(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 513 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 514 */     loginform.setJ_password("");
/* 515 */     loginform.setJ_username("");
/* 516 */     request.getSession().removeAttribute("loginform");
/* 517 */     return mapping.findForward("adminloginpage");
/*     */   }
/*     */   
/*     */   public ActionForward addArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 522 */     return mapping.findForward("addarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward saveArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 526 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*     */     
/* 528 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 529 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 530 */     buscomp.addArticleTypes(localSessionFactory.openSession(), uploadimagepojo);
/* 531 */     List<String> articletypes = new ArrayList();
/* 532 */     List<ArticleTypes> articletypesdto = new ArrayList();
/* 533 */     articletypesdto = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 534 */     for (ArticleTypes articleTypes : articletypesdto)
/*     */     {
/* 536 */       articletypes.add(articleTypes.getArticleType());
/*     */     }
/* 538 */     getServlet().getServletContext().setAttribute("articleTypes", articletypes);
/*     */     
/* 540 */     return mapping.findForward("addarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward viewArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 544 */     List<ArticleTypes> articletypes = new ArrayList();
/* 545 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 546 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 547 */     articletypes = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 548 */     request.setAttribute("viewarticlestypes", articletypes);
/* 549 */     return mapping.findForward("viewarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward deleteArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 553 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 554 */     int id = Integer.parseInt(request.getParameter("id"));
/* 555 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 556 */     buscomp.removeArticleTypes(localSessionFactory.openSession(), id);
/* 557 */     List<ArticleTypes> articletypes = new ArrayList();
/* 558 */     articletypes = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 559 */     request.setAttribute("viewarticlestypes", articletypes);
/* 560 */     return mapping.findForward("viewarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRolePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 564 */     return mapping.findForward("addrolepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRoleUserPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 568 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 569 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 570 */     List<String> users = new ArrayList();
/* 571 */     List<UserPojo> userpojos = new ArrayList();
/* 572 */     List<String> roles = new ArrayList();
/* 573 */     List<Role> rolespojos = new ArrayList();
/* 574 */     rolespojos = buscomp.viewRole(localSessionFactory.openSession());
/* 575 */     userpojos = buscomp.showUsers(localSessionFactory.openSession());
/* 576 */     for (UserPojo userpojo : userpojos) {
/* 577 */       users.add(userpojo.getUserName());
/*     */     }
/* 579 */     for (Role role : rolespojos) {
/* 580 */       roles.add(role.getRoleName());
/*     */     }
/*     */     
/*     */ 
/* 584 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 585 */     uploadimagepojo.setRole_user_list(users);
/* 586 */     uploadimagepojo.setRole_role_list(roles);
/* 587 */     return mapping.findForward("addroleuserpage");
/*     */   }
/*     */   
/*     */   public ActionForward addRoleArticlePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 591 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 592 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 593 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 594 */     List<String> articletypes = new ArrayList();
/* 595 */     List<ArticleTypes> articletypepojo = new ArrayList();
/* 596 */     List<String> roles = new ArrayList();
/* 597 */     articletypepojo = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 598 */     List<Role> rolespojos = new ArrayList();
/* 599 */     rolespojos = buscomp.viewRole(localSessionFactory.openSession());
/*     */     
/* 601 */     for (ArticleTypes atpojo : articletypepojo) {
/* 602 */       articletypes.add(atpojo.getArticleType());
/*     */     }
/* 604 */     for (Role role : rolespojos) {
/* 605 */       roles.add(role.getRoleName());
/*     */     }
/*     */     
/*     */ 
/* 609 */     uploadimagepojo.setRole_article_list(articletypes);
/* 610 */     uploadimagepojo.setRole_role_list(roles);
/* 611 */     return mapping.findForward("addrolearticlepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRole(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 615 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*     */     
/* 617 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 618 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 619 */     buscomp.addRole(localSessionFactory.openSession(), uploadimagepojo);
/* 620 */     return mapping.findForward("addrolepage");
/*     */   }
/*     */   
/*     */   public ActionForward viewRoles(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 624 */     List<Role> roleslist = new ArrayList();
/* 625 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 626 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 627 */     roleslist = buscomp.viewRole(localSessionFactory.openSession());
/* 628 */     request.setAttribute("roleslist", roleslist);
/* 629 */     return mapping.findForward("viewroles");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRole(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 633 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 634 */     int id = Integer.parseInt(request.getParameter("id"));
/* 635 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 636 */     buscomp.removeRole(localSessionFactory.openSession(), id);
/* 637 */     List<Role> roleslist = new ArrayList();
/* 638 */     roleslist = buscomp.viewRole(localSessionFactory.openSession());
/* 639 */     request.setAttribute("roleslist", roleslist);
/* 640 */     return mapping.findForward("viewroles");
/*     */   }
/*     */   
/*     */   public ActionForward roleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 644 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 645 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 646 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 647 */     buscomp.addRoleUser(localSessionFactory.openSession(), uploadimagepojo);
/* 648 */     return mapping.findForward("addroleuserpage");
/*     */   }
/*     */   
/*     */   public ActionForward viewRoleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 653 */     List<RoleUserMapping> roleuserlist = new ArrayList();
/* 654 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 655 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 656 */     roleuserlist = buscomp.viewRoleUser(localSessionFactory.openSession());
/* 657 */     request.setAttribute("roleuserlist", roleuserlist);
/* 658 */     return mapping.findForward("viewroleusers");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRoleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 662 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 663 */     int id = Integer.parseInt(request.getParameter("id"));
/* 664 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 665 */     buscomp.removeRoleUser(localSessionFactory.openSession(), id);
/* 666 */     List<RoleUserMapping> roleuserlist = new ArrayList();
/* 667 */     roleuserlist = buscomp.viewRoleUser(localSessionFactory.openSession());
/* 668 */     request.setAttribute("roleuserlist", roleuserlist);
/* 669 */     return mapping.findForward("viewroleusers");
/*     */   }
/*     */   
/*     */   public ActionForward roleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 673 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 674 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 675 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 676 */     buscomp.addRoleArticle(localSessionFactory.openSession(), uploadimagepojo);
/* 677 */     return mapping.findForward("addrolearticlepage");
/*     */   }
/*     */   
/*     */   public ActionForward ViewRoleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 681 */     List<RoleArticleMapping> rolearticlelist = new ArrayList();
/* 682 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 683 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 684 */     rolearticlelist = buscomp.viewRoleArticle(localSessionFactory.openSession());
/* 685 */     request.setAttribute("rolearticlelist", rolearticlelist);
/* 686 */     return mapping.findForward("viewrolearticles");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRoleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 690 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 691 */     int id = Integer.parseInt(request.getParameter("id"));
/* 692 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 693 */     buscomp.removeRoleArticle(localSessionFactory.openSession(), id);
/* 694 */     List<RoleArticleMapping> rolearticlelist = new ArrayList();
/* 695 */     rolearticlelist = buscomp.viewRoleArticle(localSessionFactory.openSession());
/* 696 */     request.setAttribute("rolearticlelist", rolearticlelist);
/* 697 */     return mapping.findForward("viewrolearticles");
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\UploadImages.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */