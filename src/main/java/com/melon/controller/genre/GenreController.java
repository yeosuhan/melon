package com.melon.controller.genre;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/genre")
public class GenreController {
	
	/**
	* 장르별 조회
	* @author 여수한
	*/
	@GetMapping("/home")
	public String getRecenteSong() {
		
		return "genre/home";
	}
}
