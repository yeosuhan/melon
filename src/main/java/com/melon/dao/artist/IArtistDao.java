package com.melon.dao.artist;

import com.melon.dto.artist.ArtistDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface IArtistDao {

    /**
     * 가수 정보
     *
     * @author 임휘재
     */
    ArtistDto selectArtistInfo(@Param("artistId") int artistId);

    /**
     * 가수 노래 최신순
     *
     * @author 임휘재
     */
    List<ArtistDto> selectArtistSongs(@Param("artistId") int artistId);

    /**
     * 가수 앨범
     *
     * @author 임휘재
     */
    List<ArtistDto> selectArtistAlbums(@Param("artistId") int artistId);

    /**
     * 가수 활동 정보
     *
     * @author 임휘재
     */
    ArtistDto selectArtistActivity(@Param("artistId") int artistId);

    /**
     * 가수 노래 인기순(좋아요 기준)
     *
     * @author 임휘재
     */
    List<ArtistDto> ArtistPopularSongsSort(@Param("artistId") int artistId);

    /**
     * 가수 노래 가나다순
     *
     * @author 임휘재
     */
    List<ArtistDto> ArtistSongNameSort(@Param("artistId") int artistId);

    /**
     * 가수 앨범 목록 중복 제거
     *
     * @author 임휘재
     */
    List<ArtistDto> ArtistAlbumsRemoveDuplication(@Param("artistId") int artistId);

    /**
     * 가수 좋아요 증가
     *
     * @author 임휘재
     */
    void ArtistLikeUpdate(@Param("artistId") int artistId);

    /**
     * 가수 좋아요 삭제
     *
     * @author 임휘재
     */
    void ArtistLikeDelete(@Param("artistId") int artistId);

    /**
     * 현재 가수 좋아요 수
     *
     * @author 임휘재
     */
    ArtistDto ArtistLikeCntNow(@Param("artistId") int artistId);

    /**
     * 가수 곡 좋아요 증가
     *
     * @author 임휘재
     */
    void ArtistSongLikeUpdate(@Param("artistId") int artistId);

    /**
     * 가수 곡 좋아요 삭제
     *
     * @author 임휘재
     */
    void ArtistSongLikeDelete(@Param("artistId") int artistId);

    /**
     * 현재 가수 곡 좋아요 수
     *
     * @author 임휘재
     */
    ArtistDto ArtistSongLikeCntNow(@Param("artistId") int artistId);


    /**
     * 가수 좋아요 조회
     *
     * @author 임휘재
     */
    int ArtistLikeCnt(@Param("artistId") int artistId);

    /**
     * 가수 좋아요를 좋아요 테이블에 저장
     *
     * @author 임휘재
     */
    void ArtistLikeToUserLike(@Param("artistId") int artistId, @Param("memberId") String memberId);


}
