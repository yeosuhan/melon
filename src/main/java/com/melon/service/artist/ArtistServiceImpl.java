package com.melon.service.artist;

import com.melon.dao.artist.IArtistDao;
import com.melon.dto.artist.ArtistDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class ArtistServiceImpl implements IArtistService{

    private final IArtistDao artistDao;


    @Override
    public ArtistDto getArtistInfo(int artistId) {
        return artistDao.selectArtistInfo(artistId);
    }

    @Override
    public List<ArtistDto> getArtistSongs(int artistId) {
        return artistDao.selectArtistSongs(artistId);
    }

    @Override
    public List<ArtistDto> getArtistAlbums(int artistId) {
        return artistDao.selectArtistAlbums(artistId);
    }

    @Override
    public ArtistDto getArtistActivity(int artistId) {
        return artistDao.selectArtistActivity(artistId);
    }
}
