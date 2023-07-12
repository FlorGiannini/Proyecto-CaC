import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Modelo{
    
    public Modelo() { }
    //codigo universal para base de datos
    
   public ArrayList<Orador> getOradores() throws SQLException {
        ArrayList<Orador> oradores = new ArrayList<>();
        //magia para ir a buscar los productos a la base de datos...
        Connection con= Conexion.getConnection();
        PreparedStatement ps= con.prepareStatement("SELECT * FROM oradores;");
        ResultSet rs =ps.executeQuery();
        while (rs.next()) {
            //el indice empieza a contar desde 1. mejor hacerlo con indices
           String nombre = rs.getString(1);
           String apellido = rs.getString(2);
           String tema= rs.getString(3);
          
           
           oradores.add(new Orador(nombre, apellido, tema));
        }
        //statement es sentencia
        return oradores;
    }
//esto crea el nuevo orador con la base de datos
   
    public int addOrador(Orador orador) {
        try {
            int cantRegsAfectados;
            String sql = "INSERT INTO oradores VALUES (?, ?, ?);";
            Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, orador.getNombre());
            ps.setString(2, orador.getApellido());
            ps.setString(3, orador.getTema());
            cantRegsAfectados = ps.executeUpdate();
            return cantRegsAfectados;
        } catch (SQLException ex) {
            throw new RuntimeException("Error al crear orador en MySQL", ex);
        }
    }


        
         
   

    
}
