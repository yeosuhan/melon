package com.melon.service.song;

import java.util.List;

import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.dto.song.BeforeChartDto;
import com.melon.dto.song.NowChartDto;
import com.melon.dto.song.SongDto;

public interface ISongService {
	/**
	* 최신노래 조회
	* @author 여수한
	*/
	public List<SongDto> getRecentSong();
	/**
	* 최신노래 조회(버튼별)
	* @author 여수한
	*/
	public List<SongDto> getOriginRecentSong(String origin);
	/**
	* 인기차트 조회
	* @author 여수한
	*/
	public List<SongDto> getPopularSong();
	/**
	* 노래 아이디 조회
	* @author 여수한
	 * @return 
	*/
	public int getSongId(String songName);
	/**
	* 노래 조회수 증가
	* @author 여수한
	 * @return 
	*/
	public void updatePlayCount(int songId);
	/**
	* 노래들은 시간 조회수 증가
	* @author 여수한
	 * @return 
	*/
	public void insertTimeViews(int songId);
	/**
	* 현재 차트 가져오기
	* @author 여수한
	 * @return 
	*/
	public List<BeforeChartDto> getNowChart();
	/**
	* 시간별 조회수 정보 가져오기
	* @author 여수한
	 * @return 
	*/
	public List<NowChartDto> getTimeViews();
	/**
	* 현재 차트 정보를 이전 차트에 넣기
	* @author 여수한
	 * @return 
	*/
	public void insertBeforeChart(List<BeforeChartDto> bcd);
	/**
	* 시간별 차트 정보를 현재 차트에 넣기
	* @author 여수한
	 * @return 
	*/
	public void insertNowChart(List<NowChartDto> ncd);
	/**
	* 이전 차트 삭제
	* @author 여수한
	 * @return 
	*/
	public void deleteBeforeChart();
	/**
	* 현재 차트 삭제
	* @author 여수한
	 * @return 
	*/
	public void deleteNowChart();
	/**
	* 현재 차트 순위 변동
	* @author 여수한
	 * @return 
	*/
	public List<String> getRankChange();
}
