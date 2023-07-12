import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name= "Servlet" , urlPatterns="/oradores")
public class Servlet extends HttpServlet {

  private Modelo modelo;
    private final String URI_LIST ="oradores.jsp";

    @Override
    public void init() throws ServletException {
        this.modelo = new Modelo();
    }   

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
    throws ServletException, IOException{
    try{
        Modelo modelo = new Modelo();
        req.setAttribute("listaOradores" , modelo.getOradores());
        req.getRequestDispatcher("oradores.jsp").forward(req,resp);
    }catch (SQLException ex){
        resp.sendError(500, "Falla al leer la base de datos");
     }
    } 
  //obtiene los datos del formulario
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
    throws ServletException, IOException {
        Orador orador = new Orador();
        orador.setNombre( req.getParameter("nombre") );
        orador.setApellido( req.getParameter("apellido") );
        orador.setTema( req.getParameter("tema"));
        System.out.println(orador.toString());
         
        modelo.addOrador(orador);        
        //el modelo me permite conectar el formulario a la pagina de oradores
        doGet(req, resp);
        //cuando de click en enviar se abre la ventana con todos los oradores
        
    }
    
}