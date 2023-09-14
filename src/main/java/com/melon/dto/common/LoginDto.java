package com.melon.dto.common;

import lombok.Data;

@Data
public class LoginDto {
	private String id;
	private String password;
	private String email;
	private String name;
	private String nick;
	private String birthday;
	private String tel;
	private String role;
}
