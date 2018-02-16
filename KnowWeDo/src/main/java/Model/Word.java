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
    public static String getDataFromDatabase(){
        String data = "";
        Connection connectDatabase = ConnectionBuilder.getConnection();
        try {
            PreparedStatement statementDatabase = connectDatabase.prepareStatement("SELECT * FROM Data");
            ResultSet resultDatabase = statementDatabase.executeQuery();
            while (resultDatabase.next()) {
                data = resultDatabase.getString("Data");
            }
        connectDatabase.close();
        } catch (SQLException ex) {
            Logger.getLogger(Word.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return data;
    }
    
   
}

