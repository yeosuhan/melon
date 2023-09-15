package com.melon.service.artist;

import com.melon.dto.artist.ArtistDto;

import java.util.List;
import java.util.Map;

public interface IArtistService {

    /**
     * 가수 단일 정보
     *
     * @author 임휘재
     */
    ArtistDto getArtistInfo(int artistId);

    /**
     * 가수 노래들
     *
     * @author 임휘재
     */
    List<ArtistDto> getArtistSongs(int artistId);

    /**
     * 가수 앨범들
     *
     * @author 임휘재
     */
    List<ArtistDto> getArtistAlbums(int artistId);

    /**
     * 가수 활동 정보
     *
     * @author 임휘재
     */
    ArtistDto getArtistActivity(int artistId);



}
