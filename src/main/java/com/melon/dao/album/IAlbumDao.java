package com.melon.dao.album;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.melon.dto.album.AlbumDto;
@Mapper
public interface IAlbumDao {
	/**
	* 최신앨범 조회
	* @author 여수한
	*/
	public List<AlbumDto> selectRecentAlbum();
	/**
	* 최신앨범 조회(버튼별)
	* @author 여수한
	*/
	public List<AlbumDto> selectOriginRecentAlbum(@Param("origin") String origin);
}
