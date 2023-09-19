package com.melon.service.adminService;

import com.melon.dto.admin.*;

import java.util.List;

public interface IAdminService {

    List<AdminSongDto> findAllSong();

    List<AdminArtistDto> findAllArtist();

    List<AdminAlbumDto> findAllAlbum();

    void saveArtist(AdminArtistDto adminArtistDto);

    void saveAlbum(AdminAlbumDto adminAlbumDto);

    void saveSong(AdminSongDto adminSongDto);
    int saveSongArtistId(String name);
    int saveSongAlbumId(String name);

    boolean deleteSongs(List<Long> songIds);

    List<AdminMemberDto> findAllMember();

    List<AdminSongDto> searchSong(String name);

    void memberBuyTicket(PaymentRequest paymentRequest);
}
