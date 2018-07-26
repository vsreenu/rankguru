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
/*     */ public class UploadImages1 extends DispatchAction
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
/*     */     
/* 142 */     return mapping.findForward("uloadimages");
/*     */   }
/*     */   
/*     */   public ActionForward addImages(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 148 */     AdminBusComp buscomp = new AdminBusCompImpl();
/* 149 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 150 */     CommonUtils localCommonUtils = new CommonUtils();
/*     */     
/*     */ 
/*     */ 
/* 154 */     String temp = localAdminHomepojo.getFolderName() + File.separator + localAdminHomepojo.getSubfolderName() + File.separator + localAdminHomepojo.getDirectoryname();
/* 155 */     System.out.println(temp);
/* 156 */     String path = temp.replace("/null", "").replaceAll("\\s+", "");
/* 157 */     System.out.println(path);
/* 158 */     String str = getServlet().getServletContext().getRealPath(File.separator) + path;
/*     */     
/* 160 */     localAdminHomepojo.setFilPath(path + File.separator + localAdminHomepojo.getImage().getFileName());
/* 161 */     System.out.println(localAdminHomepojo.getFilPath());
/*     */     
/*     */ 
/*     */ 
/*     */ 
/* 166 */     localCommonUtils.UploadFile(localAdminHomepojo.getImage(), str);
/* 167 */     if (localAdminHomepojo.getImage1() != null)
/* 168 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage1(), str);
/* 169 */     if (localAdminHomepojo.getImage2() != null)
/* 170 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage2(), str);
/* 171 */     if (localAdminHomepojo.getImage3() != null)
/* 172 */       localCommonUtils.UploadFile(localAdminHomepojo.getImage3(), str);
/* 173 */     return mapping.findForward("addimages");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward getSubfoldersForImages(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 180 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 181 */     String basepath = getServlet().getServletContext().getRealPath(File.separator) + uploadimagepojo.getFolderName();
/* 182 */     List<String> list = new ArrayList();
/* 183 */     String[] children = new File(basepath).list();
/* 184 */     for (String subdir : children) {
/* 185 */       if (new File(basepath + File.separator + subdir).isDirectory()) {
/* 186 */         list.add(subdir);
/*     */       }
/*     */     }
/* 189 */     uploadimagepojo.setSubFolders(list);
/* 190 */     return mapping.findForward("addimages");
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   private List<String> getArticleTypes(String userName, Session session)
/*     */   {
/* 197 */     List<String> articleTypesList = new ArrayList();
/*     */     try
/*     */     {
/* 200 */       Connection localConnection = ((SessionImpl)session).connection();
/* 201 */       String qry = "select distinct ra.article_name from role_user ru , role_article ra where ru.role_name=ra.role_name and ru.user_name = '" + userName.trim() + "'";
/* 202 */       System.out.println(qry);
/* 203 */       Statement localStatement = localConnection.createStatement();
/* 204 */       ResultSet localResultSet = localStatement.executeQuery(qry.toUpperCase());
/* 205 */       while (localResultSet.next())
/*     */       {
/* 207 */         articleTypesList.add(localResultSet.getString(1));
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 212 */       localException.printStackTrace();
/*     */     }
/*     */     
/* 215 */     return articleTypesList;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public List<String> getRolesForUser(String userName, Session session)
/*     */   {
/* 223 */     List<String> userRolesList = new ArrayList();
/*     */     
/*     */ 
/*     */     try
/*     */     {
/* 228 */       Connection localConnection = ((SessionImpl)session).connection();
/* 229 */       String qry = "select distinct ru.role_name from role_user ru  where  ru.user_name = '" + userName.trim() + "'";
/* 230 */       Statement localStatement = localConnection.createStatement();
/* 231 */       ResultSet localResultSet = localStatement.executeQuery(qry.toUpperCase());
/* 232 */       while (localResultSet.next())
/*     */       {
/* 234 */         userRolesList.add(localResultSet.getString(1));
/*     */       }
/*     */     }
/*     */     catch (Exception localException)
/*     */     {
/* 239 */       localException.printStackTrace();
/*     */     }
/*     */     
/* 242 */     return userRolesList;
/*     */   }
/*     */   
/*     */ 
/*     */   private List<String> getSubArticleTypes(String articleType)
/*     */   {
/* 248 */     List<String> subArticleTypesList = new ArrayList();
/* 249 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 250 */     Session session = localSessionFactory.openSession();
/* 251 */     String qry = "from SubArticleTypes where articleType ='" + articleType + "'";
/* 252 */     Query query = session.createQuery(qry);
/* 253 */     List<ArticleTypes> articletypes = query.list();
/* 254 */     for (ArticleTypes type : articletypes)
/*     */     {
/* 256 */       subArticleTypesList.add(type.getArticleType());
/*     */     }
/* 258 */     return subArticleTypesList;
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward viewArticlesPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 265 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 266 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 267 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 268 */     System.out.println(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 269 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 270 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward viewArticles(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 277 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 278 */     UploadImagePojo uploimagepojo = (UploadImagePojo)form;
/* 279 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 280 */     List<UploadImagePojo> viewarticles = buscomp.viewArticles(localSessionFactory.openSession(), uploimagepojo);
/* 281 */     System.out.println("articles size=========" + viewarticles.size());
/* 282 */     request.getSession().setAttribute("viewarticles", viewarticles);
/* 283 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward createUserPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 290 */     if (!authorisedUser()) return mapping.findForward("adduser");
/* 291 */     return mapping.findForward("adduser");
/*     */   }
/*     */   
/*     */   private boolean authorisedUser() {
/* 295 */     return true;
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward createUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 302 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 303 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 304 */     new SecurityAlgo(); if (SecurityAlgo.validatePassword(localAdminHomepojo.getPpassword(), "1000:5b42403565336335386139:85000dd473f02424d45e59b95c3dfb8b0225a3710d4f306b49bfe5fa6a282d729118352b9ad38314ffc6df5affe50e2ea9e6129b749353f19fc7ae2270ed738a"))
/*     */     {
/* 306 */       SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 307 */       buscomp.createUser(localSessionFactory.openSession(), localAdminHomepojo);
/*     */     }
/* 309 */     return mapping.findForward("adduser");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward addIpPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 316 */     return mapping.findForward("addip");
/*     */   }
/*     */   
/*     */   public ActionForward addIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 322 */     UploadImagePojo localAdminHomepojo = (UploadImagePojo)form;
/* 323 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 324 */     new SecurityAlgo(); if (SecurityAlgo.validatePassword(localAdminHomepojo.getIppassword(), "1000:5b42403639623862383130:c5b284fdd7f12e3d123e97d01715e371b5a15b95a2689f76c88199573bfd2de785844ac1a97659985e43b7228f4c433d39094a3a45200f2ccd7483e670b7b1aa"))
/*     */     {
/* 326 */       SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 327 */       buscomp.addIp(localSessionFactory.openSession(), localAdminHomepojo);
/*     */     }
/* 329 */     return mapping.findForward("addip");
/*     */   }
/*     */   
/*     */   public ActionForward viewIncativeArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 335 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 336 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 337 */     List<UploadImagePojo> inactivearticles = buscomp.showInactiveArticle(localSessionFactory.openSession());
/* 338 */     request.setAttribute("inactivearticles", inactivearticles);
/* 339 */     return mapping.findForward("showarticles");
/*     */   }
/*     */   
/*     */   public ActionForward updateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 345 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 346 */     UploadImagePojo pojo = (UploadImagePojo)form;
/* 347 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 348 */     buscomp.updateArticle(localSessionFactory.openSession(), pojo);
/* 349 */     if (pojo.getImage() != null) {
/* 350 */       CommonUtils localCommonUtils = new CommonUtils();
/* 351 */       String temp = pojo.getFolderName() + File.separator + pojo.getSubfolderName() + File.separator + pojo.getDirectoryname();
/* 352 */       System.out.println(temp);
/* 353 */       String path = temp.replace("/null", "").replaceAll("\\s+", "");
/* 354 */       System.out.println(path);
/* 355 */       String str = getServlet().getServletContext().getRealPath(File.separator) + path;
/* 356 */       localCommonUtils.UploadFile(pojo.getImage(), str);
/*     */     }
/* 358 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward editArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */     throws Exception
/*     */   {
/* 364 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 365 */     int id = Integer.parseInt(request.getParameter("id"));
/* 366 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 367 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 368 */     UploadImagePojo uploadimagepojo1 = buscomp.editArticle(localSessionFactory.openSession(), id);
/* 369 */     uploadimagepojo.setTitle(uploadimagepojo1.getTitle());
/* 370 */     uploadimagepojo.setDescription(uploadimagepojo1.getDescription());
/* 371 */     uploadimagepojo.setFolderName(uploadimagepojo1.getFolderName());
/* 372 */     uploadimagepojo.setSubfolderName(uploadimagepojo1.getSubfolderName());
/* 373 */     uploadimagepojo.setArticleType(uploadimagepojo1.getArticleType());
/* 374 */     uploadimagepojo.setArticleSubType(uploadimagepojo1.getArticleSubType());
/* 375 */     uploadimagepojo.setArticleNumber(uploadimagepojo1.getArticleNumber());
/* 376 */     uploadimagepojo.setId(uploadimagepojo1.getId());
/* 377 */     uploadimagepojo.setFilPath(uploadimagepojo1.getFilPath());
/* 378 */     uploadimagepojo.setStatus(uploadimagepojo1.getStatus());
/* 379 */     uploadimagepojo.setUrl(uploadimagepojo1.getUrl());
/* 380 */     uploadimagepojo.setImagePath(uploadimagepojo1.getImagePath());
/* 381 */     String basepath = getServlet().getServletContext().getRealPath(File.separator);
/* 382 */     List<String> list = new ArrayList();
/* 383 */     String[] children = new File(basepath).list();
/* 384 */     for (String subdir : children) {
/* 385 */       if (new File(getServlet().getServletContext().getRealPath(File.separator) + subdir).isDirectory()) {
/* 386 */         list.add(subdir);
/*     */       }
/*     */     }
/* 389 */     uploadimagepojo.setFolders(list);
/* 390 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 391 */     uploadimagepojo.setArticlList(getArticleTypes(loginform.getJ_username(), localSessionFactory.openSession()));
/* 392 */     String basepath1 = getServlet().getServletContext().getRealPath("/") + uploadimagepojo.getFolderName();
/* 393 */     Object list1 = new ArrayList();
/* 394 */     String[] children1 = new File(basepath1).list();
/* 395 */     for (String subdir : children1) {
/* 396 */       if (new File(basepath1 + File.separator + subdir).isDirectory()) {
/* 397 */         ((List)list1).add(subdir);
/*     */       }
/*     */     }
/* 400 */     uploadimagepojo.setSubFolders((List)list1);
/* 401 */     return mapping.findForward("updatearticle");
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public ActionForward showIps(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 408 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 409 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 410 */     List<IpPojo> ippojolist = buscomp.showIps(localSessionFactory.openSession());
/* 411 */     System.out.print("user pojo list ============== " + ippojolist.size());
/* 412 */     request.setAttribute("ippojolist", ippojolist);
/* 413 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward showUsers(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 417 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 418 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 419 */     List<UserPojo> userpojolist = buscomp.showUsers(localSessionFactory.openSession());
/* 420 */     System.out.print("user pojo list ============== " + userpojolist.size());
/* 421 */     request.setAttribute("userpojolist", userpojolist);
/* 422 */     return mapping.findForward("showusers");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 426 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 427 */     int id = Integer.parseInt(request.getParameter("id"));
/* 428 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 429 */     buscomp.inactivateUser(localSessionFactory.openSession(), id);
/* 430 */     List<UserPojo> userpojolist = buscomp.showUsers(localSessionFactory.openSession());
/* 431 */     request.setAttribute("userpojolist", userpojolist);
/* 432 */     return mapping.findForward("showusers");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 437 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 438 */     int id = Integer.parseInt(request.getParameter("id"));
/* 439 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 440 */     buscomp.inactivateIp(localSessionFactory.openSession(), id);
/* 441 */     List<IpPojo> ippojolist = buscomp.showIps(localSessionFactory.openSession());
/* 442 */     request.setAttribute("ippojolist", ippojolist);
/* 443 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward deleteAllIps(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 447 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 448 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 449 */     buscomp.deleteAllIps(localSessionFactory.openSession());
/* 450 */     List<IpPojo> ippojo = buscomp.showIps(localSessionFactory.openSession());
/* 451 */     request.setAttribute("ippojo", ippojo);
/* 452 */     return mapping.findForward("showips");
/*     */   }
/*     */   
/*     */   public ActionForward inactivateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 457 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 458 */     int id = Integer.parseInt(request.getParameter("id"));
/* 459 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 460 */     buscomp.inactivateArticle(localSessionFactory.openSession(), id);
/* 461 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward activateArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 466 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 467 */     AdminBusComp adminbuscomp = new AdminBusCompImpl();
/* 468 */     int id = Integer.parseInt(request.getParameter("id"));
/* 469 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 470 */     int articleNumber = adminbuscomp.getArticleNumber(localSessionFactory.openSession());
/*     */     
/*     */ 
/*     */ 
/* 474 */     buscomp.activateArticle(localSessionFactory.openSession(), id, articleNumber);
/* 475 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */ 
/*     */   public ActionForward removeArticle(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 481 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 482 */     int id = Integer.parseInt(request.getParameter("id"));
/* 483 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 484 */     buscomp.removeArticle(localSessionFactory.openSession(), id);
/* 485 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward removeUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 490 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 491 */     int id = Integer.parseInt(request.getParameter("id"));
/* 492 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 493 */     buscomp.removeUser(localSessionFactory.openSession(), id);
/* 494 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward removeIp(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 499 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 500 */     int id = Integer.parseInt(request.getParameter("id"));
/* 501 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 502 */     buscomp.removeUser(localSessionFactory.openSession(), id);
/* 503 */     return mapping.findForward("viewarticlespage");
/*     */   }
/*     */   
/*     */   public ActionForward logout(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 508 */     LoginForm loginform = (LoginForm)request.getSession().getAttribute("loginform");
/* 509 */     loginform.setJ_password("");
/* 510 */     loginform.setJ_username("");
/* 511 */     request.getSession().removeAttribute("loginform");
/* 512 */     return mapping.findForward("adminloginpage");
/*     */   }
/*     */   
/*     */   public ActionForward addArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 517 */     return mapping.findForward("addarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward saveArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 521 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*     */     
/* 523 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 524 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 525 */     buscomp.addArticleTypes(localSessionFactory.openSession(), uploadimagepojo);
/* 526 */     return mapping.findForward("addarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward viewArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 530 */     List<ArticleTypes> articletypes = new ArrayList();
/* 531 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 532 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 533 */     articletypes = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 534 */     request.setAttribute("viewarticlestypes", articletypes);
/* 535 */     return mapping.findForward("viewarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward deleteArticleType(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 539 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 540 */     int id = Integer.parseInt(request.getParameter("id"));
/* 541 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 542 */     buscomp.removeArticleTypes(localSessionFactory.openSession(), id);
/* 543 */     List<ArticleTypes> articletypes = new ArrayList();
/* 544 */     articletypes = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 545 */     request.setAttribute("viewarticlestypes", articletypes);
/* 546 */     return mapping.findForward("viewarticletypepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRolePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 550 */     return mapping.findForward("addrolepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRoleUserPage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 554 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 555 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 556 */     List<String> users = new ArrayList();
/* 557 */     List<UserPojo> userpojos = new ArrayList();
/* 558 */     List<String> roles = new ArrayList();
/* 559 */     List<Role> rolespojos = new ArrayList();
/* 560 */     rolespojos = buscomp.viewRole(localSessionFactory.openSession());
/* 561 */     userpojos = buscomp.showUsers(localSessionFactory.openSession());
/* 562 */     for (UserPojo userpojo : userpojos) {
/* 563 */       users.add(userpojo.getUserName());
/*     */     }
/* 565 */     for (Role role : rolespojos) {
/* 566 */       roles.add(role.getRoleName());
/*     */     }
/*     */     
/*     */ 
/* 570 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 571 */     uploadimagepojo.setRole_user_list(users);
/* 572 */     uploadimagepojo.setRole_role_list(roles);
/* 573 */     return mapping.findForward("addroleuserpage");
/*     */   }
/*     */   
/*     */   public ActionForward addRoleArticlePage(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 577 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 578 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 579 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 580 */     List<String> articletypes = new ArrayList();
/* 581 */     List<ArticleTypes> articletypepojo = new ArrayList();
/* 582 */     List<String> roles = new ArrayList();
/* 583 */     articletypepojo = buscomp.viewArticleTypes(localSessionFactory.openSession());
/* 584 */     List<Role> rolespojos = new ArrayList();
/* 585 */     rolespojos = buscomp.viewRole(localSessionFactory.openSession());
/*     */     
/* 587 */     for (ArticleTypes atpojo : articletypepojo) {
/* 588 */       articletypes.add(atpojo.getArticleType());
/*     */     }
/* 590 */     for (Role role : rolespojos) {
/* 591 */       roles.add(role.getRoleName());
/*     */     }
/*     */     
/*     */ 
/* 595 */     uploadimagepojo.setRole_article_list(articletypes);
/* 596 */     uploadimagepojo.setRole_role_list(roles);
/* 597 */     return mapping.findForward("addrolearticlepage");
/*     */   }
/*     */   
/*     */   public ActionForward addRole(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 601 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/*     */     
/* 603 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 604 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 605 */     buscomp.addRole(localSessionFactory.openSession(), uploadimagepojo);
/* 606 */     return mapping.findForward("addrolepage");
/*     */   }
/*     */   
/*     */   public ActionForward viewRoles(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 610 */     List<Role> roleslist = new ArrayList();
/* 611 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 612 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 613 */     roleslist = buscomp.viewRole(localSessionFactory.openSession());
/* 614 */     request.setAttribute("roleslist", roleslist);
/* 615 */     return mapping.findForward("viewroles");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRole(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 619 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 620 */     int id = Integer.parseInt(request.getParameter("id"));
/* 621 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 622 */     buscomp.removeRole(localSessionFactory.openSession(), id);
/* 623 */     List<Role> roleslist = new ArrayList();
/* 624 */     roleslist = buscomp.viewRole(localSessionFactory.openSession());
/* 625 */     request.setAttribute("roleslist", roleslist);
/* 626 */     return mapping.findForward("viewroles");
/*     */   }
/*     */   
/*     */   public ActionForward roleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 630 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 631 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 632 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 633 */     buscomp.addRoleUser(localSessionFactory.openSession(), uploadimagepojo);
/* 634 */     return mapping.findForward("addroleuserpage");
/*     */   }
/*     */   
/*     */   public ActionForward viewRoleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
/*     */   {
/* 639 */     List<RoleUserMapping> roleuserlist = new ArrayList();
/* 640 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 641 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 642 */     roleuserlist = buscomp.viewRoleUser(localSessionFactory.openSession());
/* 643 */     request.setAttribute("roleuserlist", roleuserlist);
/* 644 */     return mapping.findForward("viewroleusers");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRoleUserMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 648 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 649 */     int id = Integer.parseInt(request.getParameter("id"));
/* 650 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 651 */     buscomp.removeRoleUser(localSessionFactory.openSession(), id);
/* 652 */     List<RoleUserMapping> roleuserlist = new ArrayList();
/* 653 */     roleuserlist = buscomp.viewRoleUser(localSessionFactory.openSession());
/* 654 */     request.setAttribute("roleuserlist", roleuserlist);
/* 655 */     return mapping.findForward("viewroleusers");
/*     */   }
/*     */   
/*     */   public ActionForward roleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 659 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 660 */     UploadImagePojo uploadimagepojo = (UploadImagePojo)form;
/* 661 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 662 */     buscomp.addRoleArticle(localSessionFactory.openSession(), uploadimagepojo);
/* 663 */     return mapping.findForward("addrolearticlepage");
/*     */   }
/*     */   
/*     */   public ActionForward ViewRoleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 667 */     List<RoleArticleMapping> rolearticlelist = new ArrayList();
/* 668 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 669 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 670 */     rolearticlelist = buscomp.viewRoleArticle(localSessionFactory.openSession());
/* 671 */     request.setAttribute("rolearticlelist", rolearticlelist);
/* 672 */     return mapping.findForward("viewrolearticles");
/*     */   }
/*     */   
/*     */   public ActionForward deleteRoleArticleMapping(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) {
/* 676 */     ShowArticleBusComp buscomp = new ShowArticleBusCompImpl();
/* 677 */     int id = Integer.parseInt(request.getParameter("id"));
/* 678 */     SessionFactory localSessionFactory = (SessionFactory)this.servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
/* 679 */     buscomp.removeRoleArticle(localSessionFactory.openSession(), id);
/* 680 */     List<RoleArticleMapping> rolearticlelist = new ArrayList();
/* 681 */     rolearticlelist = buscomp.viewRoleArticle(localSessionFactory.openSession());
/* 682 */     request.setAttribute("rolearticlelist", rolearticlelist);
/* 683 */     return mapping.findForward("viewrolearticles");
/*     */   }
/*     */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\UploadImages1.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */