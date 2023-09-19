package com.melon.service.adminService;

import com.melon.dao.admin.Admin;
import com.melon.dto.admin.*;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Log4j2
public class AdminServiceImpl implements IAdminService {

    private final Admin adminDao;

    @Autowired
    // 생성자
    public AdminServiceImpl(Admin adminDao) {
        this.adminDao = adminDao;
    }

    // 노래 전체찾기
    public List<AdminSongDto> findAllSong() {
        return adminDao.findAllSong();
    }

    // 가수 전체찾기
    public List<AdminArtistDto> findAllArtist() {
        return adminDao.findAllArtist();
    }

    // 앨범 전체찾기
    public List<AdminAlbumDto> findAllAlbum() {
        return adminDao.findAllAlbum();
    }

    // 가수 저장
    public void saveArtist(AdminArtistDto adminArtistDto) {
        adminDao.saveArtist(adminArtistDto);
    }

    // 앨범 저장
    public void saveAlbum(AdminAlbumDto adminAlbumDto) {
        adminDao.saveAlbum(adminAlbumDto);
    }

    public int saveSongArtistId(String name) {
        return adminDao.saveSongArtistId(name);
    }

    public int saveSongAlbumId(String name) {
        return adminDao.saveSongAlbumId(name);
    }

    // 노래 저장
    public void saveSong(AdminSongDto adminSongDto) {
        adminDao.saveSong(adminSongDto);
    }

    // 노래삭제
    public boolean deleteSongs(List<Long> songIds) {
        try {
            // songIds를 사용하여 노래를 데이터베이스에서 삭제
            log.info("service"+songIds);
            adminDao.deleteSongsById(songIds);
            return true; // 삭제 성공
        } catch (Exception e) {
            // 예외 처리 (삭제 실패)
            return false;
        }
    }

    public List<AdminMemberDto> findAllMember() {

        return adminDao.findAllMember();

    }

    @Override
    public List<AdminSongDto> searchSong(String name) {
        return adminDao.searchSong(name);
    }

    @Override
    @Transactional
    public void memberBuyTicket(PaymentRequest paymentRequest) {
        adminDao.memberBuyTicket(paymentRequest);
    }
}
