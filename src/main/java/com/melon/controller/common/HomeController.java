package com.melon.controller.common;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.service.playlistnow.IPlaylistnowService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final IPlaylistnowService playlistnowService;
    @GetMapping("/")
    public String Home(Model model){
    	List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist("tkdldjs985");
		model.addAttribute("pd",pd);
        return "index";
    }

}