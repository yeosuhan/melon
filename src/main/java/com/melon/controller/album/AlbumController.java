package com.melon.controller.album;

import java.util.List;

import com.melon.dto.album.AlbumDetails;
import com.melon.dto.comment.CommentDto;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
	 * 앨범 정보, 수록곡, 상세, 댓글 조회
	 * @author 임휘재
	 */
	@GetMapping("/{albumId}")
	public String albumDetails(@PathVariable("albumId") int albumId,
							   Model model){
		AlbumDetails albumDetails = albumService.getAlbumDetails(albumId);
		model.addAttribute("albumDetails", albumDetails);

		List<AlbumDetails> getAlbumSongList = albumService.getAlbumSongList(albumId);
		model.addAttribute("getAlbumSongList", getAlbumSongList);

		AlbumDetails albumDetail = albumService.getAlbumDetail(albumId);
		model.addAttribute("albumDetail", albumDetail);

		List<CommentDto> albumCommentList = albumService.getAlbumCommentList(albumId);
		log.info("Number of comments retrieved: {}", albumCommentList.size());
		model.addAttribute("albumComments", albumCommentList);
		if (!albumCommentList.isEmpty()) {
			log.info("memberId : {}", albumCommentList.get(0).getMemberId());
			log.info("albumId : {}", albumCommentList.get(0).getAlbumId());
		} else {
			log.info("No albums found for this artist.");
		}
		return "album/album";
	}


	/**
	 * 앨범 댓글 작성
	 * @author 임휘재
	 */
	@PostMapping("/{albumId}/comment/write")
	public String addUserComment(@ModelAttribute CommentDto commentDto,
								 @PathVariable("albumId") int albumId) {
		log.info("dto : {}", commentDto);
		albumService.saveComment(commentDto, albumId);
		return "redirect:/album/" + albumId;
	}

	/**
	 * 앨범 댓글 삭제
	 * @author 임휘재
	 */
	@PostMapping("/{albumId}/comment/delete/{commentId}")
	public String deleteUserComment(@PathVariable("albumId") int albumId,
									@PathVariable("commentId") int commentId) {
		albumService.deleteComment(commentId, albumId);
		return "redirect:/album/" + albumId;
	}

	@PostMapping("/{albumId}/like/update")
	public ResponseEntity<Integer> albumLikeCntUpdate(@PathVariable("albumId") int albumId) {
		try {
			String memberId = "admin";
			albumService.albumLikeUpdate(albumId);
			AlbumDetails dto = albumService.selectAlbumLike(albumId);
			log.info("selectAlbumLike : {}", dto.getAlbumLike());
			albumService.albumLikeToUserLike(albumId, memberId);
			log.info("앨범 좋아요 증가를 user_like 테이블에 저장. memberId: {}", memberId);
			return ResponseEntity.ok(dto.getAlbumLike());
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(-1);
		}
	}

	@PostMapping("/{albumId}/like/delete")
	public ResponseEntity<Integer> albumLikeCntDelete(@PathVariable("albumId") int albumId) {
		try {
			String memberId = "admin";
			albumService.albumLikeDelete(albumId);
			AlbumDetails dto = albumService.selectAlbumLike(albumId);
			log.info("selectAlbumLike : {}", dto.getAlbumLike());
			albumService.albumLikeToUserLike(albumId, memberId);
			log.info("앨범 좋아요 감소를 user_like 테이블에 저장. memberId: {}", memberId);
			return ResponseEntity.ok(dto.getAlbumLike());
		} catch (Exception e) {
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(1);
		}
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