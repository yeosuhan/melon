package com.melon.service.album;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melon.dao.album.IAlbumDao;
import com.melon.dto.album.AlbumDto;

import lombok.extern.log4j.Log4j2;
@Service
@Log4j2
public class AlbumServiceImpl implements IAlbumService {

	private final IAlbumDao albumDao;
	
	@Autowired
	public AlbumServiceImpl(IAlbumDao albumDao) {
		this.albumDao = albumDao;
	}
	/**
	* 최신앨범 조회
	* @author 여수한
	*/
	@Override
	public List<AlbumDto> getRecentAlbum() {
		return albumDao.selectRecentAlbum();
	}
	/**
	* 최신앨범 조회(버튼별)
	* @author 여수한
	*/
	@Override
	public List<AlbumDto> getOriginRecentAlbum(String origin) {
		if(origin.equals("해외")) {
			log.info(origin);
			origin="foreign";
			log.info(origin);
		} else if(origin.equals("국내")) {
			log.info(origin);
			origin="domestic";
			log.info(origin);
		} else if(origin.equals("전체")) {
			log.info(origin);
			origin="all";
			log.info(origin);
		}
		List<AlbumDto> ad = albumDao.selectOriginRecentAlbum(origin);
		return ad;
	}
}