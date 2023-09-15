package com.melon.dto.song;

import lombok.Data;

@Data
public class SongDto {
	private String songName;
	private String artistName;
	private String albumName;
	private int songLike;
}
