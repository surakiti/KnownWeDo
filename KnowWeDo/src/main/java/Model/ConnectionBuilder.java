/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JVVQX
 */
public class ConnectionBuilder {
    public static Connection getConnection() {
        Config config = new Config();
        Connection connectDatabase = null;
        String url = config.getProperty("url");
        String username = config.getProperty("user");
        String password = config.getProperty("pass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connectDatabase = DriverManager.getConnection(url,username,password);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connectDatabase;
    }
    public static void main(String[] args) {
        
        System.out.println(ConnectionBuilder.getConnection());
    }
}
 