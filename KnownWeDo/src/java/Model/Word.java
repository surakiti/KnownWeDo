/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JVVQX
 */
public class Word {
    public static String getData(){
        String str = "";
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Data");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                str = rs.getString("Data");
            }
        con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Word.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return str;
    }
}
