package com.melon.controller.common;


import com.melon.dto.common.MainAlbumDto;
import com.melon.dto.common.MainSongDto;
import com.melon.service.common.IMainService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final IMainService iMainService;

    @GetMapping("/")
    public String Home(Model model){

        // 앨범추천
        List<MainAlbumDto> fourAlbum = iMainService.fourAlbum();
        model.addAttribute("fourAlbum", fourAlbum);
        System.out.println("함꼐들어요");
        System.out.println(fourAlbum);

        // 추천음악
        List<MainSongDto> recommendSong = iMainService.recommendSong();
        model.addAttribute("recommendSong", recommendSong);
        System.out.println("추천음악");
        System.out.println(recommendSong);

        // 마이뮤직
        List<MainAlbumDto> myMusic = iMainService.myMusic();
        model.addAttribute("myMusic", myMusic);
        System.out.println("마이뮤직");
        System.out.println(myMusic);

        // top100
        List<MainSongDto> topMusic = iMainService.topMusic();
        model.addAttribute("topMusic", topMusic);
        System.out.println("탑백");
        System.out.println(topMusic);

        return "index";
    }

}