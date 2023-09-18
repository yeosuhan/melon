package com.melon.controller.common;

import com.melon.dto.common.SearchDto;
import com.melon.service.common.ISearchService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Log4j2
@Controller
@RequiredArgsConstructor
public class SearchController {

    private final ISearchService ISearchService;

    @GetMapping("/search")
    public String searchSongByName(@RequestParam String songName, Model model) {
        List<SearchDto> songs = ISearchService.findSongByName(songName);



        model.addAttribute("songs", songs);
        return "common/search";
    }

}