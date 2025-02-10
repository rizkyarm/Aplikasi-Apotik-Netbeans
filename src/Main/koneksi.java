/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class koneksi {

    static PreparedStatement prepareStatement(String insert_into_transaksi_values) {
        return null;
    }
    public koneksi() {
}
    private static Connection koneksi;
public Connection getconnect() throws SQLException {
    Connection con = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/apotek","root","");
        System.out.println("Driver Terhubung");
        return con;
    }catch (SQLException se) {
        System.out.println("Perintah SQL Salah!!!");
        return null;
    }catch (ClassNotFoundException ex) {
        System.out.println("Driver Tidak Terhubung!!");
        return null;
    }
}
}
    

