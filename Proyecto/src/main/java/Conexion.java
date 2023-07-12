
import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {
    //direccion de mi base de datos, nombre, contraseña y nombre de bbdd
    private static final String URL_DB = "jdbc:mysql://root:root@localhost:3306/lista_oradores?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static BasicDataSource dataSource;

    private Conexion() {
    }
//metodo singleton, pool de conexiones
    private static DataSource getDataSource() {
        if (dataSource == null) {
            //se intenta algo y si no ocurre, lanza un mensaje de error que ve el usuario del otro lado.
            try {
                dataSource = new BasicDataSource();
                dataSource.setUrl(URL_DB);
                //la cantidad de conexiones permitidas del servidor
                dataSource.setInitialSize(50);
            } catch (Exception ex) {
                throw new RuntimeException("Error de E/S al leer config de BBDD", ex);
            }
        }
        return dataSource;
    }

    public static Connection getConnection() throws SQLException {
        //el throw lanza, aca no pongo try catch
        return getDataSource().getConnection();
    }
}
