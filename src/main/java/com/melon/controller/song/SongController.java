package com.melon.controller.song;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/song")
public class SongController {
	/**
	* 인기차트 조회
	* @author 여수한
	*/
	@GetMapping("/popular")
	public String getPopularChart() {
		
		return "song/popular_charts";
	}
	/**
	* 최신노래 조회
	* @author 여수한
	*/
	@GetMapping("/recente/song")
	public String getRecenteSong() {
		
		return "song/recente_song";
	}
}
