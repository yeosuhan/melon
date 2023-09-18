package com.melon.service.common;

import com.melon.dto.common.SearchDto;
import com.melon.dao.common.ISearchDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SearchServiceImpl implements ISearchService {

    private final ISearchDao ISearchDao;
    @Override
    public List<SearchDto> findSongByName(String songName){
        return ISearchDao.searchSong(songName);
    }
}
