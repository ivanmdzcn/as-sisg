package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ivan
 */
public class Conexion {

    // Bloque estático para cargar el controlador JDBC de MySQL
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Error: MySQL JDBC Driver no encontrado");
            e.printStackTrace();
        }
    }

    public static Connection getConexion() {

        String url = "jdbc:mysql://localhost:3306/sisg"; // Reemplaza "tu_base_de_datos" según tu configuración
        String usuario = "root"; // Reemplaza con tu nombre de usuario de MySQL
        String contrasena = ""; // Reemplaza con tu contraseña de MySQL

        try {
            Connection con = DriverManager.getConnection(url, usuario, contrasena);
            return con;
        } catch (SQLException e) {
            System.out.println("Error al establecer la conexión: " + e.toString());
            return null;
        }
    }
}


