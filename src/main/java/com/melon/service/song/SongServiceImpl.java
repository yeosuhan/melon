package com.melon.service.song;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melon.dao.song.ISongDao;
import com.melon.dto.song.BeforeChartDto;
import com.melon.dto.song.NowChartDto;
import com.melon.dto.song.SongDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class SongServiceImpl implements ISongService {

	private final ISongDao songDao;

	@Autowired
	public SongServiceImpl(ISongDao songDao) {
		this.songDao = songDao;
	}

	/**
	 * 최신노래 조회
	 * 
	 * @author 여수한
	 */
	@Override
	public List<SongDto> getRecentSong() {
		List<SongDto> rsd = songDao.selectRecentSong();
		return rsd;
	}

	/**
	 * 최신노래 조회(버튼별)
	 * 
	 * @author 여수한
	 */
	@Override
	public List<SongDto> getOriginRecentSong(String origin) {
		if (origin.equals("해외")) {
			origin = "foreign";
		} else if (origin.equals("국내")) {
			origin = "domestic";
		}
		List<SongDto> rsd = songDao.selectOriginRecenSong(origin);
		return rsd;
	}

	/**
	 * 인기차트 조회
	 * 
	 * @author 여수한
	 */
	@Override
	public List<SongDto> getPopularSong() {
		List<SongDto> sd = songDao.selectPopularSong();
		return sd;
	}

	/**
	 * 노래 아이디 조회
	 * 
	 * @author 여수한
	 */
	@Override
	public int getSongId(String songName) {
		int songId = songDao.selectSongId(songName);
		return songId;
	}

	/**
	 * 노래 조회수 증가
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void updatePlayCount(int songId) {
		songDao.updatePlayCount(songId);
	}

	/**
	 * 노래 조회수 증가
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void insertTimeViews(int songId) {
		songDao.insertTimeViews(songId);
	}

	/**
	 * 현재 차트 가져오기
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public List<BeforeChartDto> getNowChart() {
		List<BeforeChartDto> bcd = songDao.selectNowChart();
		return bcd;
	}

	/**
	 * 시간별 조회수 정보 가져오기
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public List<NowChartDto> getTimeViews() {
		List<NowChartDto> ncd = songDao.selectTimeViews();
		return ncd;
	}

	/**
	 * 현재 차트 정보를 이전 차트에 넣기
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void insertBeforeChart(List<BeforeChartDto> bcd) {
		for (int i = 0; i < bcd.size(); i++) {
			songDao.insertBeforeChart(bcd.get(i));
		}
	}

	/**
	 * 시간별 차트 정보를 현재 차트에 넣기
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void insertNowChart(List<NowChartDto> ncd) {
		for (int i = 0; i < ncd.size(); i++) {
			songDao.insertNowChart(ncd.get(i));
		}
	}

	/**
	 * 이전 차트 삭제
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void deleteBeforeChart() {
		songDao.deleteBeforeChart();
	}

	/**
	 * 현재 차트 삭제
	 * 
	 * @author 여수한
	 * @return
	 */
	@Override
	public void deleteNowChart() {
		songDao.deleteNowChart();
	}
	/**
	* 현재 차트 순위 변동
	* @author 여수한
	 * @return 
	*/
	@Override
	public List<String> getRankChange() {
		List<String> rankChange = songDao.selectRankChange();
		return rankChange;
	}
}
