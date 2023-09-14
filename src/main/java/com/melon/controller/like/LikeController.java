package com.melon.controller.like;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/like")
@Controller
public class LikeController {

	/**
	 * 좋아요 조회
	 * @like 방수현 (2023.09.06)
	 */
	@GetMapping
	public String like(){
		return "like/like";
	}

	/**
	* 좋아요 조회
	* @like 김훈규 (2023.09.04)
	*/
	@GetMapping("/song")
	public String like_song() {
		return "like/likesong";
	}
	
	/**
	* 좋아요 앨범 조회
	* @like 김훈규 (2023.09.05)
	*/
	@GetMapping("/album")
	public String like_album() {
		return "like/likealbum";
	}


}
