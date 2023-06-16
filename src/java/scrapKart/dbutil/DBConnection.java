/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package scrapKart.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;

/**
 *
 * @author HIMANSHU JOSHI
 */
public class DBConnection {
    private static Connection conn;
    static
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/scrapkart_master";
            String username = "root";
            String password = "@Hjoshi0703";
            System.out.println("Driver loaded!");
            conn=DriverManager.getConnection(url, username, password);
            System.out.println("Connection opened!");

        }
        
    catch(Exception ex)
    {
        System.out.println("Exception in static block:"+ex);

    }
    }

public static Connection getConnection()
{
    return conn;
}
public static void closeConnection()
{
    try
    {
        conn.close();
    }
    catch(Exception ex)
    {
        System.out.println("Exception in closing the conn:"+ex);
    }
}


}
