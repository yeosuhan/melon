package com.melon.controller.common;


import com.melon.dto.common.MainAlbumDto;
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

        List<MainAlbumDto> fourAlbum = iMainService.fourAlbum();
        System.out.println(fourAlbum);
        model.addAttribute("fourAlbum", fourAlbum);
        return "index";
    }

}