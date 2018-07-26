/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sree.tali.pojo;

import org.apache.struts.action.ActionForm;

/**
 *
 * @author welcome
 */
public class ThornamPojo extends ActionForm {
    
    
   
/*    */    int id;
/*    */   
/*    */ 
/*    */    String type;
/*    */   
/*    */    String title;
/*    */   
/*    */    String url;

/*    */    String status;

            String captcha;
              
            
/*    */   
/*    */

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }
 public String getUrl()
/*    */   {
               return url;
            }
/*    */   
/*    */

    public void setUrl(String url) {
        this.url = url;
    }

    public String getStatus() {
        return status;
    }

/*    */
    public void setStatus(String status) {
        this.status = status;
    }

/*    */
/*    */
    public String getType()/*    */ {
        /* 19 */     return this.type;
        /*    */
    }
 public void setType(String type) {
/* 23 */     this.type = type;
/*    */   }
/*    */   
/*    */   public String getTitle() {
/* 27 */     return this.title;
/*    */   }
/*    */   
/*    */   public void setTitle(String title) {
/* 31 */     this.title = title;
/*    */   }
/*    */   
/*    */   
/*    */ 
/*    */ 
/*    */   public int getId()
/*    */   {
/* 46 */     return this.id;
/*    */   }
/*    */   
/*    */   public void setId(int id) {
/* 50 */     this.id = id;
/*    */   } 


    
}
