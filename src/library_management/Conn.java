/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package library_management;

/**
 *
 * @author Jerkeen
 */
import java.sql.*;
public class Conn {
    Connection conn;
    Statement s;
   
    public Conn() {
    try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn=DriverManager.getConnection("jdbc:mysql:///db_lib","root","");
    s=conn.createStatement();
}catch(Exception e)
{
    e.printStackTrace();
}
}
    public Connection getConnection() {
        return conn;
    }
}

