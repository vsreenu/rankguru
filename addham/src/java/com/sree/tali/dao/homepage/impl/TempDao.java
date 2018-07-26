package com.sree.tali.dao.homepage.impl;

import com.sree.tali.hibernate.pojo.TempDataPojo;
import com.sree.tali.hibernate.pojo.ThoranamDataPojo;
import java.util.List;
import org.hibernate.Session;

public abstract interface TempDao
{
  public abstract void saveTemp(TempDataPojo paramTempDataPojo, Session paramSession);
  
  public abstract List<ThoranamDataPojo> viewTemp(Session paramSession);
  
  public abstract void removeTemp(int paramInt, Session paramSession);
  
  public abstract void activateTemp(int paramInt, Session paramSession);
  
  public abstract void inActivateTemp(int paramInt, Session paramSession);
  
  public abstract TempDataPojo viewTempArticle(int paramInt, Session paramSession);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\TempDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */