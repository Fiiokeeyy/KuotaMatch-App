/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;

/**
 *
 * @author Acer
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class KoneksiDB {
    private static Connection koneksi;
    
    public static Connection getKoneksi() {
        // Cek apakah koneksi belum terbentuk
        if (koneksi == null) {
            try {
                // Pastikan nama database sesuai dengan yang di phpMyAdmin
                String url = "jdbc:mysql://localhost:3306/db_spk_paket_data";
                String user = "root";
                String password = ""; // Biarkan kosong jika pakai bawaan XAMPP
                
                // Mendaftarkan driver dan membuat koneksi
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                
                System.out.println("Status: KONEKSI KE DATABASE BERHASIL!");
            } catch (SQLException e) {
                System.out.println("Status: KONEKSI GAGAL! Error: " + e.getMessage());
            }
        }
        return koneksi;
    }
    
    // Fungsi main khusus untuk ngetest koneksi
    public static void main(String[] args) {
        getKoneksi();
    }
}
