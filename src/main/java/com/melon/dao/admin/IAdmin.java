package com.melon.dao.admin;

import com.melon.dto.album.AdminAlbumDto;
import com.melon.dto.artist.AdminArtistDto;
import com.melon.dto.member.AdminMemberDto;
import com.melon.dto.song.AdminSongDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IAdmin {

    List<AdminSongDto> findAllSong();

    List<AdminArtistDto> findAllArtist();

    List<AdminAlbumDto> findAllAlbum();

    void saveArtist(AdminArtistDto adminArtistDto);

    void saveAlbum(AdminAlbumDto adminAlbumDto);


    void saveSong(AdminSongDto adminSongDto);
    int saveSongArtistId(String artistName);
    int saveSongAlbumId(String albumName);


    void deleteSongsById(List<Long> songIds);

    List<AdminMemberDto> findAllMember();

    // 노래 검색
    List<AdminSongDto> searchSong(String name);
}
