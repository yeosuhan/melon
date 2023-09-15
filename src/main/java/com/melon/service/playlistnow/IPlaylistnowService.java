package com.melon.service.playlistnow;

import java.util.List;

import com.melon.dto.playlistnow.PlaylistnowDto;

public interface IPlaylistnowService {
	/**
	* 내 재생목록 조회
	* @author 여수한
	*/
	public List<PlaylistnowDto> getMyPlaylist(String memberId);
	/**
	* 재생목록에 노래 추가
	* @author 여수한
	 * @param playlist_cd 
	*/
	public void insertMyPlaylist(int playlistCd,int songId);
	/**
	* 내 재생목록 코드 조회
	* @author 여수한
	*/
	public int getPlaylistCd(String memberId);
}
