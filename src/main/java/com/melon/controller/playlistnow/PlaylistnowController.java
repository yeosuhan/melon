package com.melon.controller.playlistnow;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.service.like.ILikeService;
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
	* @author 여수한
	*/
	@ResponseBody
	@PostMapping("/add")
	public List<PlaylistnowDto> AddMyPlaylist(@RequestParam("add_song") String songName) {
		int songId = songService.getSongId(songName); // songName => songId로 바꾸기
		songService.updatePlayCount(songId); // 노래 조회수 증가
		songService.insertTimeViews(songId); // 인기차트를 위해 노래 조회수 추가
		int playlistCd = playlistnowService.getPlaylistCd("tkdldjs985"); // memberId => playlistCd
		playlistnowService.insertMyPlaylist(playlistCd,songId); // playlistCd, songName
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist("tkdldjs985");
		return pd;
	}
}
