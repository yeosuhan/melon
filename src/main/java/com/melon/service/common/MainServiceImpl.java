package com.melon.service.common;

import com.melon.dao.common.IMainDao;
import com.melon.dto.common.MainAlbumDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MainServiceImpl implements IMainService{

    private final IMainDao iMainDao;

    @Override
    public List<MainAlbumDto> fourAlbum() {
        return iMainDao.fourAlbum();
    }
}
