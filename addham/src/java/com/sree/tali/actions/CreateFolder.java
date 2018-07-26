/*    */ package com.sree.tali.actions;
/*    */ 
/*    */ import java.io.PrintStream;
/*    */ import java.sql.Connection;
/*    */ import java.sql.DriverManager;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import org.apache.struts.action.ActionForm;
/*    */ import org.apache.struts.action.ActionForward;
/*    */ import org.apache.struts.action.ActionMapping;
/*    */ 
/*    */ public class CreateFolder
/*    */ {
/*    */   public ActionForward execute(ActionMapping paramActionMapping, ActionForm paramActionForm, HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse) throws Exception
/*    */   {
/* 16 */     return paramActionMapping.findForward("welcome");
/*    */   }
/*    */   
/*    */   public static void main(String[] as) throws Exception
/*    */   {
/* 21 */     Class.forName("com.mysql.jdbc.Driver");
/* 22 */     Connection conn = null;
/* 23 */     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sree", "root", "system");
/* 24 */     System.out.println(conn);
/*    */   }
/*    */ }


/* Location:              F:\addham\ROOT\WEB-INF\classes\!\com\sree\tali\actions\CreateFolder.class
 * Java compiler version: 7 (51.0)
 * JD-Core Version:       0.7.1
 */