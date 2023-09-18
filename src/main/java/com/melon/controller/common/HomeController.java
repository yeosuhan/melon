package com.melon.controller.common;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.melon.dto.common.LoginDto;
import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.service.playlistnow.IPlaylistnowService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class HomeController {
	private final IPlaylistnowService playlistnowService;

	@GetMapping("/")
	public String Home(Model model, HttpSession session, LoginDto m) {
		// 세션에 저장된 로그인 정보 가져오기
		LoginDto loginDto = (LoginDto) session.getAttribute("user");
		if(loginDto==null) {
			return "index";
		} else {
			String memberId = loginDto.getId();
			List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist(memberId);
			model.addAttribute("pd", pd);
			return "index";
		}
	}

}