package com.melon.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/admin")
    public String admin() {
        return "member/admin";
    }

    @GetMapping("/song/add")
    public String songAdd() {
        return "song/songAdd";
    }

    @GetMapping("/album/add")
    public String albumAdd() {
        return "album/albumAdd";
    }

    @GetMapping("/artist/add")
    public String artistAdd() {
        return "artist/artistAdd";
    }

    @GetMapping("/admin/member")
    public String adminMember() {
        return "member/admin_member";
    }
}
