package com.sree.tali.buscomp;

import com.sree.tali.pojo.AdminHomepojo;
import com.sree.tali.pojo.HomeList;
import com.sree.tali.pojo.LoginForm;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Session;

public abstract interface DisplayBusComp
{
  public abstract void DisplayHome(AdminHomepojo paramAdminHomepojo, Session paramSession);
  
  public abstract HomeList DisplayHome(Session paramSession, HttpServletRequest paramHttpServletRequest);
  
  public abstract AdminHomepojo DisplayPage(Session paramSession, int paramInt);
  
  public abstract boolean Authenticate(Session paramSession, LoginForm paramLoginForm);
  
  public abstract boolean AuthenticateIp(Session paramSession, String paramString);
}


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\buscomp\DisplayBusComp.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */