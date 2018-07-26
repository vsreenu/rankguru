/*    */ package com.sree.tali.util;
/*    */ 
/*    */ import java.util.ArrayList;
/*    */ import java.util.List;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class LoginUtils
/*    */ {
/*    */   String Username;
/*    */   String Password;
/* 18 */   List<String> rolesList = new ArrayList();
/*    */   
/*    */   public String getUsername() {
/* 21 */     return this.Username;
/*    */   }
/*    */   
/*    */   public void setUsername(String Username) {
/* 25 */     this.Username = Username;
/*    */   }
/*    */   
/*    */   public String getPassword() {
/* 29 */     return this.Password;
/*    */   }
/*    */   
/*    */   public void setPassword(String Password) {
/* 33 */     this.Password = Password;
/*    */   }
/*    */   
/*    */   public List<String> getRolesList() {
/* 37 */     return this.rolesList;
/*    */   }
/*    */   
/*    */   public void setRolesList(List<String> rolesList) {
/* 41 */     this.rolesList = rolesList;
/*    */   }
/*    */ }


