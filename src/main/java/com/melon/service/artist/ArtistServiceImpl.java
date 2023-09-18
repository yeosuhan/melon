package com.melon.service.artist;

import com.melon.dao.artist.IArtistDao;
import com.melon.dao.like.ILikeDao;
import com.melon.dto.artist.ArtistDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@RequiredArgsConstructor
@Slf4j
public class ArtistServiceImpl implements IArtistService{

    private final IArtistDao artistDao;


    /**
     * 가수 정보 조회
     *
     * @author 임휘재
     */
    @Override
    public ArtistDto getArtistInfo(int artistId) {
        return artistDao.selectArtistInfo(artistId);
    }

    /**
     * 가수 곡 조회
     *
     * @author 임휘재
     */
    @Override
    public List<ArtistDto> getArtistSongs(int artistId) {
        return artistDao.selectArtistSongs(artistId);
    }

    /**
     * 가수 앨범 조회
     *
     * @author 임휘재
     */
    @Override
    public List<ArtistDto> getArtistAlbums(int artistId) {
        return artistDao.selectArtistAlbums(artistId);
    }

    /**
     * 가수 활동정보 조회
     *
     * @author 임휘재
     */
    @Override
    public ArtistDto getArtistActivity(int artistId) {
        return artistDao.selectArtistActivity(artistId);
    }

    /**
     * 가수 수록곡 최신순, 인기순, 가나다순
     *
     * @author 임휘재
     */
    @Override
    public List<ArtistDto> getArtistSongsSort(int artistId, String sortType) {
        List<ArtistDto> sort = new ArrayList<>();

        if (sortType.equals("최신순")) {
            sort = artistDao.selectArtistSongs(artistId);
        } else if (sortType.equals("인기순")) {
            sort = artistDao.ArtistPopularSongsSort(artistId);
        } else if (sortType.equals("가나다순")) {
            sort = artistDao.ArtistSongNameSort(artistId);
        }

        log.info("sort : " + sort);
        log.info("sortType : " + sortType);
        return sort;
    }

    /**
     * 가수 앨범 목록 중복 제거
     *
     * @author 임휘재
     */
    @Override
    public List<ArtistDto> ArtistAlbumsRemoveDuplication(int artistId) {
        List<ArtistDto> artistAlbums = artistDao.ArtistAlbumsRemoveDuplication(artistId);

        //Set에 담는 이유는 Set은 중복요소를 자동으로 지워주기 때문.
        Set<String> uniqueArtistNames = new HashSet<>();

        // 중복 제거된 결과를 담을 리스트
        List<ArtistDto> uniqueArtistAlbums = new ArrayList<>();

        for (ArtistDto artistDto : artistAlbums) {
            String albumName = artistDto.getAlbumName();

            if (!uniqueArtistNames.contains(albumName)) {
                uniqueArtistNames.add(albumName);
                uniqueArtistAlbums.add(artistDto);
            }
        }
        return uniqueArtistAlbums;
    }


    /**
     * 가수 좋아요 증가
     *
     * @author 임휘재
     */
    @Override
    public void ArtistLikeUpdate(int artistId) {
        artistDao.ArtistLikeUpdate(artistId);
    }

    /**
     * 가수 좋아요 감소
     *
     * @author 임휘재
     */
    @Override
    public void ArtistLikeDelete(int artistId) {
        artistDao.ArtistLikeDelete(artistId);
    }

    /**
     * 가수 현재 좋아요 조회
     *
     * @author 임휘재
     */
    @Override
    public ArtistDto getArtistLikeCntNow(int artistId) {
        return artistDao.ArtistLikeCntNow(artistId);
    }


    @Override
    public void ArtistSongLikeUpdate(int artistId) {
        artistDao.ArtistSongLikeUpdate(artistId);
    }

    @Override
    public void ArtistSongLikeDelete(int artistId) {
        artistDao.ArtistSongLikeDelete(artistId);
    }

    @Override
    public ArtistDto ArtistSongLikeCntNow(int artistId) {
        return artistDao.ArtistSongLikeCntNow(artistId);
    }

    @Override
    public int ArtistLikeCnt(int artistId) {
        return artistDao.ArtistLikeCnt(artistId);
    }

    /**
     * 가수 좋아요를 좋아요 테이블에 저장
     *
     * @author 임휘재
     */
    @Override
    public void artistLikeToUserLike(int artistId, String memberId) {
        artistDao.ArtistLikeToUserLike(artistId, memberId);
    }


}
