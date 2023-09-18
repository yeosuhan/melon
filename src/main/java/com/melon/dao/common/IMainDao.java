package com.melon.dao.common;

import com.melon.dto.common.MainAlbumDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IMainDao {

    public List<MainAlbumDto> fourAlbum();
}
