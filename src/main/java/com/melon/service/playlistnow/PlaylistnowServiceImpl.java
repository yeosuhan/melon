package com.melon.service.playlistnow;

import java.util.List;

import org.springframework.stereotype.Service;

import com.melon.dao.playlistnow.IPlaylistnowDao;
import com.melon.dto.playlistnow.PlaylistnowDto;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service
@RequiredArgsConstructor
@Log4j2
public class PlaylistnowServiceImpl implements IPlaylistnowService{
	
	private final IPlaylistnowDao playlistnowDao;
	/**
	* 내 재생목록 조회
	* @author 여수한
	*/
	@Override
	public List<PlaylistnowDto> getMyPlaylist(String memberId) {
		List<PlaylistnowDto> pd = playlistnowDao.selectMyPlaylist(memberId);
		return pd;
	}
	/**
	* 재생목록에 노래 추가
	* @author 여수한
	*/
	@Override
	public void insertMyPlaylist(int playlistCd,int songId) {
		playlistnowDao.insertMyPlaylist(playlistCd,songId);
	}
	/**
	* 내 재생목록 코드 조회
	* @author 여수한
	*/
	@Override
	public int getPlaylistCd(String memberId) {
		int playlist_cd = playlistnowDao.selectPlaylistCd(memberId);
		return playlist_cd;
	}
}
