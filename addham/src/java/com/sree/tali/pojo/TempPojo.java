/*    */ package com.sree.tali.pojo;
/*    */ 
/*    */ import org.apache.struts.action.ActionForm;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class TempPojo
/*    */   extends ActionForm
/*    */ {
/*    */   private int id;
/*    */   private String type;
/*    */   private String title;
/*    */   private String text;
/*    */   
/*    */   public String getType()
/*    */   {
/* 21 */     return this.type;
/*    */   }
/*    */   
/*    */   public void setType(String type) {
/* 25 */     this.type = type;
/*    */   }
/*    */   
/*    */   public String getTitle() {
/* 29 */     return this.title;
/*    */   }
/*    */   
/*    */   public void setTitle(String title) {
/* 33 */     this.title = title;
/*    */   }
/*    */   
/*    */   public String getText() {
/* 37 */     return this.text;
/*    */   }
/*    */   
/*    */   public void setText(String text) {
/* 41 */     this.text = text;
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public int getId()
/*    */   {
/* 48 */     return this.id;
/*    */   }
/*    */   
/*    */   public void setId(int id) {
/* 52 */     this.id = id;
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\pojo\TempPojo.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */