package com.melon.controller.member;

import com.melon.dto.admin.*;
import com.melon.service.adminService.IAdminService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@Log4j2
public class AdminController {

    private final IAdminService adminService;

    @Autowired
    public AdminController(IAdminService adminService) {
        this.adminService = adminService;
    }

    // 노래 및 메인페이지
    @GetMapping("/admin")
    public String admin(Model model) {
        List<AdminSongDto> allSong = adminService.findAllSong();
        model.addAttribute("allsong", allSong);
//        System.out.println(allSong);
        return "member/admin";

    }

    // 가수페이지
    @GetMapping("/admin/artist")
    public String adminArtist(Model model) {
        List<AdminArtistDto> allArtist = adminService.findAllArtist();
        model.addAttribute("allartist", allArtist);
        return "member/adminArtist";
    }

    // 앨범페이지
    @GetMapping("/admin/album")
    public String adminAlbum(Model model) {
        List<AdminAlbumDto> allAlbum = adminService.findAllAlbum();
        model.addAttribute("allalbum", allAlbum);
        return "member/adminAlbum";
    }


    @GetMapping("/song/add")
    public String songAdd() {
        return "song/songAdd";
    }

    @GetMapping("/album/add")
    public String albumAdd() {
        return "album/albumAdd";
    }

    @GetMapping("/artist/add")
    public String artistAdd() {
        return "artist/artistAdd";
    }

    @GetMapping("/admin/member")
    public String adminMember(Model model) {
        List<AdminMemberDto> allMember = adminService.findAllMember();

        model.addAttribute("allMember", allMember);
        return "member/admin_member";
    }


    @PostMapping("/artist/add")
    public String saveArtist(@ModelAttribute AdminArtistDto adminArtistDto) {
        adminService.saveArtist(adminArtistDto);
        return "redirect:/admin/artist";
    }


    @PostMapping("/album/add")
    public String saveAlbum(@ModelAttribute AdminAlbumDto adminAlbumDto) {
        adminService.saveAlbum(adminAlbumDto);
        return "redirect:/admin/album";
    }

    @PostMapping("/song/add")
    public String saveSong(@ModelAttribute AdminSongDto adminSongDto) {
        String artistName = adminSongDto.getArtistName();
        int artistId = adminService.saveSongArtistId(artistName);
        adminSongDto.setArtistId(artistId);

        String albumName = adminSongDto.getAlbumName();
        int albumId = adminService.saveSongAlbumId(albumName);
        adminSongDto.setAlbumId(albumId);

        adminService.saveSong(adminSongDto);

        return "redirect:/admin";
    }

    @GetMapping("/song/search")
    public String searchSong(@RequestParam String name, Model model) {
        List<AdminSongDto> searchSong = adminService.searchSong(name);
        model.addAttribute("searchSong", searchSong);

        return "member/adminSearchSong";

    }



    @PostMapping("/process-payment")
    public String processPayment(@RequestBody PaymentRequest paymentRequest) {

        adminService.memberBuyTicket(paymentRequest);
        return "index";

    }
}
