package com.melon.controller.artist;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/artist")
public class ArtistController {

    /**
     * 가수 곡 조회, 가수 앨범 조회, 가수 상세정보 조회
     * @author 임휘재
     */
    @GetMapping
    public String artist_song(){
        return "artist/artist";
    }

}
