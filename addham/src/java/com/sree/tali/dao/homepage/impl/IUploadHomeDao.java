package com.sree.tali.dao.homepage.impl;

import com.sree.tali.pojo.AdminHomepojo;
import org.hibernate.Session;

public abstract interface IUploadHomeDao
{
  public abstract void save(AdminHomepojo paramAdminHomepojo, Session paramSession);
  
  public abstract AdminHomepojo load(int paramInt, Session paramSession);
  
  public abstract AdminHomepojo DisplayHome(Session paramSession);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\IUploadHomeDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */