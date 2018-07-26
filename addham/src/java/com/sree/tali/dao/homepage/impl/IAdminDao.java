package com.sree.tali.dao.homepage.impl;

import com.sree.tali.pojo.UploadImagePojo;
import org.hibernate.Session;

public abstract interface IAdminDao
{
  public abstract void save(UploadImagePojo paramUploadImagePojo, Session paramSession);
  
  public abstract int getArticleNumber(Session paramSession);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\IAdminDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */