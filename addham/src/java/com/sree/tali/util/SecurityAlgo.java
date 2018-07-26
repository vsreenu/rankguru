/*    */ package com.sree.tali.util;
/*    */ 
/*    */ import java.io.PrintStream;
/*    */ import java.math.BigInteger;
/*    */ import java.security.NoSuchAlgorithmException;
/*    */ import java.security.SecureRandom;
/*    */ import java.security.spec.InvalidKeySpecException;
/*    */ import javax.crypto.SecretKey;
/*    */ import javax.crypto.SecretKeyFactory;
/*    */ import javax.crypto.spec.PBEKeySpec;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class SecurityAlgo
/*    */ {
/*    */   public static void main(String[] args)
/*    */     throws NoSuchAlgorithmException, InvalidKeySpecException
/*    */   {
/* 20 */     String originalPassword = "010788";
/* 21 */     String generatedSecuredPasswordHash = generateStorngPasswordHash(originalPassword);
/* 22 */     System.out.println("========== " + generatedSecuredPasswordHash);
/* 23 */     System.out.println(validatePassword("password", "1000:5b42403761383436333963:6245ccc3f02a08627cedafb064c5ed972f46562dbe95be39bc9ddc0dcc657098f021f9d585d7b60cc594bc950a45514e2315873864f36fa5db06c92209fa4df1"));
/*    */   }
/*    */   
/*    */   public static String generateStorngPasswordHash(String password) throws NoSuchAlgorithmException, InvalidKeySpecException {
/* 27 */     int iterations = 1000;
/* 28 */     char[] chars = password.toCharArray();
/* 29 */     byte[] salt = getSalt().getBytes();
/*    */     
/* 31 */     PBEKeySpec spec = new PBEKeySpec(chars, salt, iterations, 512);
/* 32 */     SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
/* 33 */     byte[] hash = skf.generateSecret(spec).getEncoded();
/* 34 */     return iterations + ":" + toHex(salt) + ":" + toHex(hash);
/*    */   }
/*    */   
/*    */   public static String getSalt() throws NoSuchAlgorithmException
/*    */   {
/* 39 */     SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
/* 40 */     byte[] salt = new byte[16];
/* 41 */     sr.nextBytes(salt);
/* 42 */     return salt.toString();
/*    */   }
/*    */   
/*    */   public static String toHex(byte[] array) throws NoSuchAlgorithmException
/*    */   {
/* 47 */     BigInteger bi = new BigInteger(1, array);
/* 48 */     String hex = bi.toString(16);
/* 49 */     int paddingLength = array.length * 2 - hex.length();
/* 50 */     if (paddingLength > 0)
/*    */     {
/* 52 */       return String.format(new StringBuilder().append("%0").append(paddingLength).append("d").toString(), new Object[] { Integer.valueOf(0) }) + hex;
/*    */     }
/* 54 */     return hex;
/*    */   }
/*    */   
/*    */   public static boolean validatePassword(String originalPassword, String storedPassword)
/*    */     throws NoSuchAlgorithmException, InvalidKeySpecException
/*    */   {
/* 60 */     String[] parts = storedPassword.split(":");
/* 61 */     int iterations = Integer.parseInt(parts[0]);
/* 62 */     byte[] salt = fromHex(parts[1]);
/* 63 */     byte[] hash = fromHex(parts[2]);
/*    */     
/* 65 */     PBEKeySpec spec = new PBEKeySpec(originalPassword.toCharArray(), salt, iterations, hash.length * 8);
/* 66 */     SecretKeyFactory skf = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
/* 67 */     byte[] testHash = skf.generateSecret(spec).getEncoded();
/*    */     
/* 69 */     int diff = hash.length ^ testHash.length;
/* 70 */     for (int i = 0; (i < hash.length) && (i < testHash.length); i++)
/*    */     {
/* 72 */       diff |= hash[i] ^ testHash[i];
/*    */     }
/* 74 */     return diff == 0;
/*    */   }
/*    */   
/*    */   public static byte[] fromHex(String hex) throws NoSuchAlgorithmException {
/* 78 */     byte[] bytes = new byte[hex.length() / 2];
/* 79 */     for (int i = 0; i < bytes.length; i++)
/*    */     {
/* 81 */       bytes[i] = ((byte)Integer.parseInt(hex.substring(2 * i, 2 * i + 2), 16));
/*    */     }
/* 83 */     return bytes;
/*    */   }
/*    */ }


