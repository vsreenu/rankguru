package com.sree.tali.dao.homepage.impl;

import com.sree.tali.pojo.AdminHomepojo;
import com.sree.tali.pojo.HomeList;
import com.sree.tali.pojo.LoginForm;
import java.util.List;
import org.hibernate.Session;

public abstract interface IIndexDao
{
  public abstract List<HomeList> Load24List(Session paramSession);
  
  public abstract List<HomeList> Load70List(Session paramSession);
  
  public abstract List<HomeList> AtoZList(Session paramSession);
  
  public abstract AdminHomepojo DisplayPage(Session paramSession, int paramInt);
  
  public abstract boolean Authenticate(Session paramSession, LoginForm paramLoginForm);
  
  public abstract boolean AuthenticateIp(Session paramSession, String paramString);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\dao\homepage\impl\IIndexDao.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */