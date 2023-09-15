package com.melon.dao.artist;

import com.melon.dto.artist.ArtistDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface IArtistDao {

    /**
     * 가수 정보
     *
     * @author 임휘재
     */
    ArtistDto selectArtistInfo(@Param("artistId") int artistId);

    /**
     * 가수 노래
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



}
