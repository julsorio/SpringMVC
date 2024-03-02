package es.accenture.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controlador {
	
	@RequestMapping("/login")
	public String login() {
		return "bienvenida";
	}
}
