package com.sree.tali.buscomp;

import com.sree.tali.pojo.AdminHomepojo;
import com.sree.tali.pojo.UploadImagePojo;
import org.hibernate.Session;

public abstract interface AdminBusComp
{
  public abstract void UploadHomeAction(AdminHomepojo paramAdminHomepojo, Session paramSession);
  
  public abstract void UploadArticle(UploadImagePojo paramUploadImagePojo, Session paramSession);
  
  public abstract int getArticleNumber(Session paramSession);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\AdminBusComp.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */