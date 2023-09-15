package com.melon.controller.song;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.dto.song.SongDto;
import com.melon.service.playlistnow.IPlaylistnowService;
import com.melon.service.song.ISongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/song")
@RequiredArgsConstructor
@Log4j2
public class SongController {
	
	private final ISongService songService;
	private final IPlaylistnowService playlistnowService;
	
	/**
	* 인기차트 조회
	* @author 여수한
	*/
	@GetMapping("/popular")
	public String getPopularChart(HttpSession session, Model model) {
		// 내 재생목록
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist("tkdldjs985");
		model.addAttribute("pd",pd);
		// 인기차트
		List<SongDto> sd =  songService.getPopularSong();
		model.addAttribute("sd",sd);
		// 순위변동
		List<String> rankChange = songService.getRankChange();
		model.addAttribute("rankChange",rankChange);
		return "song/popular_charts";
	}
	/**
	* 최신노래 조회
	* @author 여수한
	*/
	@GetMapping("/recente")
	public String getRecenteSong(Model model) {
		List<SongDto> rsd = songService.getRecentSong();
		model.addAttribute("rsd",rsd);
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist("tkdldjs985");
		model.addAttribute("pd",pd);
		return "song/recente_song";
	}
	/**
	* 최신노래 조회(버튼별)
	* @author 여수한
	*/
	@ResponseBody
	@GetMapping("/recente/{origin}")
	public List<SongDto> getOriginRecentAlbum(@PathVariable String origin) {
		List<SongDto> rsd = songService.getOriginRecentSong(origin);
		return rsd;
	}
}
