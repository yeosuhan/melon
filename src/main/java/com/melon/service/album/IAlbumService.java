package com.melon.service.album;

import java.util.List;

import com.melon.dto.album.AlbumDto;

public interface IAlbumService {

	/**
	* 최신앨범 조회
	* @author 여수한
	*/
	public List<AlbumDto> getRecentAlbum();
	/**
	* 최신앨범 조회(버튼별)
	* @author 여수한
	*/
	public List<AlbumDto> getOriginRecentAlbum(String origin);
}
