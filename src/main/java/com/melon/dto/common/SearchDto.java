package com.melon.dto.common;

import lombok.Data;


@Data
public class SearchDto {
    private String songName;
    private String albumName;
    private String artistName;
    private String genre;
    //test
    private byte[] albumImg;
    private int albumId;
}
