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
        Config cfg = new Config();
        Connection con = null;
        String url = cfg.getProperty("url");
        String user = cfg.getProperty("user");
        String pass = cfg.getProperty("pass");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionBuilder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
   
}
