package com.melon.controller.playlistrecente;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PlaylistrecenteController {

	@GetMapping("/playlistrecente")
	public String playlistrecente() {
		return "playlistrecente/playlistrecente";
	}
}
