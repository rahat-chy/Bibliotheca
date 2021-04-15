/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author RDHXT
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class javaConnect {
    Connection conn;
    
    public static Connection ConnectDb()
    {
        String url="jdbc:mysql://localhost:3306/temp";
        String username="root";
        String password="";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(url,username,password);
            return conn;
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
    }
    
}
