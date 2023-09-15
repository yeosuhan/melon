package com.melon.dto.artist;

import lombok.Data;

import java.util.Date;

@Data
public class ArtistDto {
    private int albumId;
    private int artistId;
    private int songId;
    private String artistName;
    private String debut;
    private String agency;
    private String activityType;
    private int artistLike;
    private byte[] artistFile;
    private String songName;
    private String albumName;
    private String releaseDate;
    private String genreName;
    private String artistPro;
    private int albumLike;
    private int songLike;

}
