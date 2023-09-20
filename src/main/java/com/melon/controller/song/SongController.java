package com.melon.controller.song;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.melon.dto.common.LoginDto;
import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.dto.song.SongDto;
import com.melon.dto.song.SongLike;
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
	 * 
	 * @author 여수한
	 */
	@GetMapping("/popular")
	public String getPopularChart(Model model, HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		if(loginDto==null) {
			// 인기차트
			List<SongDto> sd = songService.getPopularSong();
			model.addAttribute("sd", sd);
			// 순위변동
			List<String> rankChange = songService.getRankChange();
			model.addAttribute("rankChange", rankChange);
			return "song/popular_charts";
		} else {
			// 인기차트
			List<SongDto> sd = songService.getPopularSong();
			model.addAttribute("sd", sd);
			// 순위변동
			List<String> rankChange = songService.getRankChange();
			model.addAttribute("rankChange", rankChange);
			String memberId = loginDto.getId();
			// 내 재생목록
			List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
			model.addAttribute("pd", pd);
			return "song/popular_charts";	
		}
	}

	/**
	 * 최신노래 조회
	 * 
	 * @author 여수한
	 */
	@GetMapping("/recente")
	public String getRecenteSong(Model model, HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		if(loginDto==null) {
			List<SongDto> rsd = songService.getRecentSong();
			model.addAttribute("rsd", rsd);
			return "song/recente_song";
		} else {
			String memberId = loginDto.getId();
			List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
			model.addAttribute("pd", pd);
			List<SongDto> rsd = songService.getRecentSong();
			model.addAttribute("rsd", rsd);
			return "song/recente_song";
			
		}
	}

	/**
	 * 최신노래 조회(버튼별)
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/recente/{origin}")
	public List<SongDto> getOriginRecentAlbum(@PathVariable String origin) {
		List<SongDto> rsd = songService.getOriginRecentSong(origin);
		return rsd;
	}

	/**
	 * 노래 좋아요 증가
	 * 
	 * @author 임휘재
	 */
	@PostMapping("/{songId}/like/update")
	public ResponseEntity<Integer> songLikeCntUpdate(@PathVariable("songId") int songId, HttpServletResponse res,
			@CookieValue(value = "isLiked", defaultValue = "false") boolean isLiked) {

		Cookie cookie = new Cookie("isLiked", Boolean.toString(isLiked));
		cookie.setMaxAge(3600); // 쿠키 만료 시간(초) 설정
		res.addCookie(cookie);
		try {
			String memberId = "admin";
			songService.getSongLikeAdd(songId);
			SongLike sl = songService.getSongLikeSelect(songId);
			log.info("selectSongLike : {}", sl.getSongLike());
			songService.SongLikeToUserLike(songId, memberId);
			log.info("노래 좋아요 증가를 user_like 테이블에 저장. memberId: {}", memberId);
			return ResponseEntity.ok(sl.getSongLike());
		} catch (Exception e) {
			log.info("songId : {}", songId);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(-1);
		}
	}

	@PostMapping("/{songId}/like/delete")
	public ResponseEntity<Integer> songLikeCntDelete(@PathVariable("songId") int songId, HttpServletResponse res,
			@CookieValue(value = "isLiked", defaultValue = "false") boolean isLiked) {

		Cookie cookie = new Cookie("isLiked", Boolean.toString(isLiked));
		cookie.setMaxAge(3600); // 쿠키 만료 시간(초) 설정
		res.addCookie(cookie);
		try {
			String memberId = "admin";
			songService.getSongLikeDel(songId);
			SongLike sl = songService.getSongLikeSelect(songId);
			log.info("selectSongLike : {}", sl.getSongLike());
			songService.SongLikeToUserLike(songId, memberId);
			log.info("노래 좋아요 감소를 user_like 테이블에 저장. memberId: {}", memberId);
			return ResponseEntity.ok(sl.getSongLike());
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(1);
		}
	}

}
