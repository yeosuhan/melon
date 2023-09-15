package com.melon.controller.member;

import com.melon.service.adminService.IAdminService;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@Log4j2
public class AdminDeleteController {

    private final IAdminService adminService;

    public AdminDeleteController(IAdminService adminService) {
        this.adminService = adminService;
    }

    // 노래삭제
    @DeleteMapping("/song/delete")
    public ResponseEntity<String> deleteSongs(@RequestBody Map<String, List<Long>> songIdsMap) {
        List<Long> songIds = songIdsMap.get("songIds");
        log.info(songIds);
        if (songIds == null || songIds.isEmpty()) {
            return ResponseEntity.badRequest().body("삭제할 노래 ID가 없습니다.");
        }

        // 서비스를 사용하여 선택한 노래 ID를 기반으로 노래 삭제 작업 수행
        boolean deleted = adminService.deleteSongs(songIds);
        log.info(deleted);

        if (deleted) {
            return ResponseEntity.ok("삭제되었습니다.");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("삭제 실패");
        }
    }
}
