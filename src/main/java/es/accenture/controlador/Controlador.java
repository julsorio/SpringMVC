package es.accenture.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Controlador {

	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public String login(@RequestParam("usuario") String usuario, @RequestParam("password") String password,
			Model model) {
		model.addAttribute("usuario", usuario);

		return "Bienvenida";
	}

	@RequestMapping("/nuevoUsuario")
	public String nuevoUsuario() {
		return "NuevoRegistro";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/guardarUsuario")
	public String guardarUsuario(@RequestParam("nombre") String nombre, @RequestParam("apellido") String apellido,
			@RequestParam("usuario") String usuario, @RequestParam("password") String password,
			@RequestParam("email") String email, @RequestParam("direccion") String direccion,
			@RequestParam("telefono") String telefono, Model model) {
		
		model.addAttribute("nombre", nombre);
		model.addAttribute("email", email);
		model.addAttribute("direccion", direccion);
		model.addAttribute("telefono", telefono);
		
		return "ConfirmarDatos";
	}
}
