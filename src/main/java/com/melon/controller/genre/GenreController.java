package com.melon.controller.genre;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.melon.dto.album.AlbumDto;
import com.melon.dto.common.LoginDto;
import com.melon.dto.genre.GenreDto;
import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.dto.song.SongDto;
import com.melon.service.album.IAlbumService;
import com.melon.service.genre.IGenreService;
import com.melon.service.playlistnow.IPlaylistnowService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/genre")
@RequiredArgsConstructor
public class GenreController {

	private final IGenreService genreService;
	private final IAlbumService albumService;
	private final IPlaylistnowService playlistnowService;

	/**
	 * 장르홈 조회
	 * 
	 * @author 여수한
	 */
	@GetMapping("/home")
	public String getRecenteSong(Model model, HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		if(loginDto==null) {
			List<GenreDto> gd = genreService.getMyGenre(); // 매개변수에 유저 ID 받아오고 넘겨야됨
			List<AlbumDto> ad = albumService.getRecentAlbum();
			model.addAttribute("gd", gd);
			model.addAttribute("ad", ad);
			return "genre/home";
		} else {
			String memberId = loginDto.getId();
		List<GenreDto> gd = genreService.getMyGenre(); // 매개변수에 유저 ID 받아오고 넘겨야됨
		List<AlbumDto> ad = albumService.getRecentAlbum();
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
		model.addAttribute("pd", pd);
		model.addAttribute("gd", gd);
		model.addAttribute("ad", ad);
		return "genre/home";
		}
	}

	/**
	 * 장르 즐겨찾기 추가
	 * 
	 * @author 여수한
	 */
	@PostMapping("/add")
	public void insertGenreLike(@RequestParam("genreCategory") int genreCategory) {
		genreService.insertGenreLike(genreCategory);
	}

	/**
	 * 장르 즐겨찾기 삭제
	 * 
	 * @author 여수한
	 */
	@PostMapping("/delete")
	public void deleteGenreLike(@RequestParam("genreCategory") int genreCategory) {
		genreService.deleteGenreLike(genreCategory);
	}

	/**
	 * 장르별 앨범 조회
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/album/{choiceGenre}")
	public List<AlbumDto> getByGenreAlbum(@PathVariable("choiceGenre") String choiceGenre) {
		List<AlbumDto> ad = genreService.getByGenreAlbum(choiceGenre);
		return ad;
	}

	/**
	 * 장르별 노래 조회
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/song/{choiceGenre}")
	public List<SongDto> getByGenreSong(@PathVariable("choiceGenre") String choiceGenre) {
		List<SongDto> rsd = genreService.getByGenreSong(choiceGenre);
		return rsd;
	}

	/**
	 * 장르별 노래 + 년도별 조회
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/song/year/{choiceEra}")
	public List<SongDto> getByGenreByEraSong(@PathVariable("choiceEra") String choiceEra,
			@RequestParam("genreName") String genreName) {
		List<SongDto> rsd = genreService.getByGenreByEraSong(choiceEra, genreName);
		return rsd;
	}

	/**
	 * 장르별 앨범 + 년도별 조회
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/album/year/{choiceEra}")
	public List<AlbumDto> getByGenreByEraAlbum(@PathVariable("choiceEra") String choiceEra,
			@RequestParam("genreName") String genreName) {
		List<AlbumDto> ad = genreService.getByGenreByEraAlbum(choiceEra, genreName);
		return ad;
	}
}
