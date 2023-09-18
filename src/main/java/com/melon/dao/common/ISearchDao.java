package com.melon.dao.common;

import com.melon.dto.common.SearchDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@Mapper
public interface ISearchDao {
    public List<SearchDto> searchSong(@Param("songName") String songName);
}
