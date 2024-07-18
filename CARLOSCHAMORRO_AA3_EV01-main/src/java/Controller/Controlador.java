package Controller;
import config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Carlos Chamorro
 */

@Controller
public class Controlador {
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    
    @RequestMapping(value = "/login", method = RequestMethod.POST);
    public ModelAndView iniciarSesion(HttpServletRequest request) {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contraseña");

        String sql = "select count(*) from usuarios where usuario = ? and contraseña = ?";
        Integer count = jdbcTemplate.queryForObject(sql, new Object[]{usuario, contrasena}, Integer.class);

        if (count != null && count > 0) {
            mav.setViewName("panel");
        } else {
            mav.addObject("mensaje", "Usuario o contraseña incorrectos");
            mav.setViewName("login");
        }
        return mav;
    }
}
