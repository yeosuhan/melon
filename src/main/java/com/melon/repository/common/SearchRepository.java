package com.melon.repository.common;

import com.melon.dto.common.SearchDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface SearchRepository {
    public List<SearchDto> searchSong(@Param("songName") String songName);
}
