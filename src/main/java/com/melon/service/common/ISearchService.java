package com.melon.service.common;

import com.melon.dto.common.SearchDto;
import java.util.List;

public interface ISearchService {
    List<SearchDto> findSongByName(String songName);
}
