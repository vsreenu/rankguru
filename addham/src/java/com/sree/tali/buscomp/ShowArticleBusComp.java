package com.sree.tali.buscomp;

import com.sree.tali.hibernate.pojo.IpPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
import com.sree.tali.pojo.ThornamPojo;
import com.sree.tali.hibernate.pojo.UserPojo;
import com.sree.tali.pojo.ArticleTypes;
import com.sree.tali.pojo.Role;
import com.sree.tali.pojo.RoleArticleMapping;
import com.sree.tali.pojo.RoleUserMapping;
import com.sree.tali.pojo.UploadImagePojo;
import java.util.List;
import org.hibernate.Session;

public abstract interface ShowArticleBusComp
{
  public abstract List<UploadImagePojo> showHomeArticle(Session paramSession);
  
  public abstract List<UploadImagePojo> showInactiveArticle(Session paramSession);
  
  public abstract UploadImagePojo showArticle(Session paramSession, String paramString);
  
  public abstract List<UploadImagePojo> viewArticles(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract void updateArticle(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<UploadImagePojo> showTitles(Session paramSession, String paramString);
  
  public abstract List<ThoranamDataPojo> showThoranamTitles(Session paramSession, String paramString);
  
  public abstract void addThoranam(Session paramSession, ThornamPojo pojo);
  
  public abstract List<UploadImagePojo> showRelatedArticle(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<UploadImagePojo> showRecentArticle(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<UploadImagePojo> showMostViewedArticle(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract void createUser(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract void addIp(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<IpPojo> showIps(Session paramSession);
  
  public abstract List<UserPojo> showUsers(Session paramSession);
  
  public abstract void inactivateUser(Session paramSession, int paramInt);
  
  public abstract void inactivateIp(Session paramSession, int paramInt);
  
  public abstract void inactivateArticle(Session paramSession, int paramInt);
  
  public abstract void activateArticle(Session paramSession, int paramInt1, int paramInt2);
  
  public abstract UploadImagePojo editArticle(Session paramSession, int paramInt);
  
  public abstract void deleteAllIps(Session paramSession);
  
  public abstract void removeArticle(Session paramSession, int paramInt);
  
  public abstract void removeUser(Session paramSession, int paramInt);
  
  public abstract void removeIp(Session paramSession, int paramInt);
  
  public abstract void addArticleTypes(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<ArticleTypes> viewArticleTypes(Session paramSession);
  
  public abstract void removeArticleTypes(Session paramSession, int paramInt);
  
  public abstract void addRole(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<Role> viewRole(Session paramSession);
  
  public abstract void removeRole(Session paramSession, int paramInt);
  
  public abstract void addRoleUser(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<RoleUserMapping> viewRoleUser(Session paramSession);
  
  public abstract void removeRoleUser(Session paramSession, int paramInt);
  
  public abstract void addRoleArticle(Session paramSession, UploadImagePojo paramUploadImagePojo);
  
  public abstract List<RoleArticleMapping> viewRoleArticle(Session paramSession);
  
  public abstract void removeRoleArticle(Session paramSession, int paramInt);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\ShowArticleBusComp.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */