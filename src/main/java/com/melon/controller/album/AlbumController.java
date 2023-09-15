package com.melon.controller.album;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.melon.dto.album.AlbumDto;
import com.melon.dto.playlistnow.PlaylistnowDto;
import com.melon.service.album.IAlbumService;
import com.melon.service.playlistnow.IPlaylistnowService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/album")
@RequiredArgsConstructor
@Log4j2
public class AlbumController {
	
	private final IAlbumService albumService;
	private final IPlaylistnowService playlistnowService;
	
    /**
     * 앨범 수록곡 조회, 앨범상세 조회, 댓글 작성 및 조회
     * @author 임휘재
     */
    @GetMapping
    public String album_song(){
        return "album/album";
    }
    
	/**
	* 최신앨범 조회
	* @author 여수한
	*/
	@GetMapping("/recente")
	public String getRecentAlbum(Model model) {
		List<AlbumDto> ad = albumService.getRecentAlbum();
		model.addAttribute("ad", ad);
		List<PlaylistnowDto> pd = playlistnowService.getMyPlaylist("tkdldjs985");
		model.addAttribute("pd",pd);
		return "album/recente_album";
	}
	/**
	* 최신앨범 조회(버튼별)
	* @author 여수한
	*/
	@ResponseBody
	@GetMapping("/recente/{origin}")
	public List<AlbumDto> getOriginRecentAlbum(@PathVariable String origin) {
		log.info("controller"+ origin);
		List<AlbumDto> ad = albumService.getOriginRecentAlbum(origin);
		return ad;
	}
}