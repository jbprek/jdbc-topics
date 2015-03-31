package org.bagab.jdbc.play;

import java.sql.*;
import java.util.Properties;

/**
 * Created by u on 3/29/15.
 */
public class DbConnect {

    public static Connection newConnectionUsingDriverManager(String host, String database, String username, String password) throws ClassNotFoundException, SQLException {
        //Since JDBC 4.0 the following line is optional
        //Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://"+host+"/"+database;
        Properties props = new Properties();
        props.setProperty("user",username);
        props.setProperty("password",password);
        // This is a bug, ssl checks presence of property
//        props.setProperty("ssl","false");
        return DriverManager.getConnection(url, props);
    }

    // TODO implement using Datasource


    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection conn;
        try {
            conn = newConnectionUsingDriverManager("localhost", "jdbc-tutorial", "jdbc-tutorial", "jdbc-tutorial");
        } catch(Exception e){
            System.err.println(e);
        }

    }
}
