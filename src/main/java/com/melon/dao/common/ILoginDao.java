package com.melon.dao.common;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.melon.dto.common.LoginDto;

@Mapper
public interface ILoginDao {
	// Login
	public LoginDto login(@Param("m") LoginDto m);
	// Join
	public void insertUser(@Param("m") LoginDto m);
	// Check
	public int check(@Param("m") LoginDto m);
	public void playList(@Param("m")LoginDto m);
}
