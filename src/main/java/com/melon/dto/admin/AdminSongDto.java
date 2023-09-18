package com.melon.dto.admin;

import lombok.Data;

@Data
public class AdminSongDto {

    private Long songId;
    private String songName;
    private String artistName;
    private String albumName;
    private String genreName;
    private String playTime;
    private String lyrics;
    private int genreId;
    private int albumId;
    private int artistId;


}
