package com.melon.controller.playlistnow;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/playlist")
@Controller
public class PlaylistnowController {

	/**
	* 재생목록 조회
	* @playlist 김훈규 (2023.09.05)
	*/
	@GetMapping("/now")
	public String playlistnow() {
		return "playlistnow/playlistnow";
	}
	
	@GetMapping("/recente")
	public String playlistrecente() {
		return "playlistrecente/playlistrecente";
	}
}
