package es.accenture.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.accenture.entidades.Usuario;

@Controller
public class ControladorGestionUsuarios {
	
	@RequestMapping(method = RequestMethod.GET, value = "/")
	public String init(Model model) {
		model.addAttribute("usuario", new Usuario());
		
		return "../InicioSesion";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/login")
	public String login(@ModelAttribute("usuario") Usuario usuario, Model model) {
		model.addAttribute("usuario", usuario.getUsuario());

		return "Bienvenida";
	}

	@RequestMapping("/nuevoUsuario")
	public String nuevoUsuario(Model model) {
		model.addAttribute("usuario", new Usuario());
		
		return "NuevoRegistro";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/guardarUsuario")
	public String guardarUsuario(@ModelAttribute("usuario")Usuario usuario, Model model) {
		
		model.addAttribute("nombre", usuario.getNombre() );
		model.addAttribute("email", usuario.getEmail());
		model.addAttribute("direccion", usuario.getDireccion());
		model.addAttribute("telefono", usuario.getTelefono());
		
		return "ConfirmarDatos";
	}
}
