/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyecto.bd;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Rico
 */
public class ConexionMysql {
  private  String host,username,password,bd,url;
  private int port;
  Connection conschool;  
  
  public ConexionMysql(){
      try{
          Class.forName("com.mysql.jdbc.Driver");
      }catch (Exception e){
          e.printStackTrace();
      }
  }
  public Connection conectar() throws Exception{
      if(conschool!=null && !conschool.isClosed())
      return conschool;
      host="127.0.0.7";
      port=3306;
      username="root";
      password="root";
      bd="Escuelas3";
      url="jdbc:mysql://"+host+":"+port+"/"+bd;
      conschool=DriverManager.getConnection(url,username,password);
      return conschool;
  }
  public void desconectar(){
      try{
        conschool.close();
        conschool=null;
      }catch (Exception e){
        e.printStackTrace();
      }
     
  }
}
