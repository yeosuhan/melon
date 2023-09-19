package com.melon.dto.admin;

import lombok.Data;

@Data
public class AdminMemberDto {

    private String id;
    private String name;
    private String nick;
    private String birthday;
    private String tel;
    private String email;
    private int ticketId;
}
