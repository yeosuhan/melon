package com.melon.dto.comment;

import lombok.Data;

import java.util.Date;

@Data
public class CommentDto {

    private int commentId;
    private String commentDetail;
    private Date commentDate;
    private int albumId;
    private String memberId;
    private String nick;
    private int commentCount;
}
