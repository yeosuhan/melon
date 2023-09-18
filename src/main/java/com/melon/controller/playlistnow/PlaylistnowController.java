package com.melon.controller.playlistnow;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.melon.dto.common.LoginDto;
import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.service.playlistnow.IPlaylistnowService;
import com.melon.service.song.ISongService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/playlist")
@RequiredArgsConstructor
@Log4j2
public class PlaylistnowController {

	private final IPlaylistnowService playlistnowService;
	private final ISongService songService;

	/**
	 * 재생목록에 노래 추가
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@PostMapping("/add")
	public List<PlaylistnowDto> AddSongMyPlaylist(@RequestParam("add_song") String songName, HttpSession session,
			LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		String memberId = loginDto.getId();

		int songId = songService.getSongId(songName); // songName => songId로 바꾸기
		songService.updatePlayCount(songId); // 노래 조회수 증가
		songService.insertTimeViews(songId); // 인기차트를 위해 노래 조회수 추가
		int playlistCd = playlistnowService.getPlaylistCd(memberId); // memberId => playlistCd
		playlistnowService.insertMyPlaylistSong(playlistCd, songId); // 내 재생목록에 추가
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
		return pd;
	}

	/**
	 * 재생목록에 체크된 노래 추가
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@PostMapping("/add/list")
	public List<PlaylistnowDto> AddSongsMyPlaylist(@RequestParam("add_songs[]") List<String> songName,
			HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		String memberId = loginDto.getId();
		List<Integer> songsId = songService.getSongsId(songName); // songName => songId로 바꾸기
		songService.updatePlayCounts(songsId); // 노래 조회수 증가
		songService.insertTimeViewss(songsId); // 인기차트를 위해 노래 조회수 추가
		int playlistCd = playlistnowService.getPlaylistCd(memberId); // memberId => playlistCd
		playlistnowService.insertMyPlaylistSongs(playlistCd, songsId); // 내 재생목록에 추가
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
		return pd;
	}

	/**
	 * 재생목록 셔플
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@GetMapping("/shuffle")
	public List<PlaylistnowDto> ShuffleMyPlaylist(HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		String memberId = loginDto.getId();
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylistShuffle(memberId);
		List<Integer> songId = songService.getSongIds(pd);
		int playlistCd = playlistnowService.getPlaylistCd(memberId);
		playlistnowService.deleteMyPlaylist(playlistCd);
		playlistnowService.insertMyPlaylist(playlistCd, songId);
		return pd;
	}

	/**
	 * 재생목록에 노래 삭제
	 * 
	 * @author 여수한
	 */
	@ResponseBody
	@PostMapping("/delete")
	public List<PlaylistnowDto> DeleteSongMyPlaylist(@RequestParam("delete_song[]") List<String> songName,
			HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		String memberId = loginDto.getId();
		List<Integer> songsId = songService.getSongsId(songName); // songName => songId로 바꾸기
		int playlistCd = playlistnowService.getPlaylistCd(memberId); // memberId => playlistCd
		playlistnowService.deleteMyPlaylistSongs(playlistCd, songsId); // 내 재생목록에서 노래 삭제
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
		return pd;
	}
}
