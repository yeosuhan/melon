package com.melon.service.common;

import javax.servlet.http.HttpSession;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.melon.dto.common.LoginDto;
import com.melon.repository.common.LoginRepository;

@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements ILoginService {

	private final LoginRepository loginRepository;
	
	@Override
	public String login(LoginDto m, HttpSession session, RedirectAttributes rttr) {
		LoginDto loginDto = loginRepository.login(m);
		if(loginDto != null) {
			session.setAttribute("user", loginDto);
			rttr.addFlashAttribute("msgTitle", "Success !");
			session.setMaxInactiveInterval(60*100);
			rttr.addFlashAttribute("msg", "로그인 성공");
			return "redirect:/";
		}else {
			rttr.addFlashAttribute("msgTitle", "Failed !");
			rttr.addFlashAttribute("msg", "로그인 실패");
			return "redirect:/login/melon";
		}
	}

	@Override
	public void logout(LoginDto m, HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addFlashAttribute("msgTitle","Success !");
		rttr.addFlashAttribute("msg", "로그아웃 성공");
	}
	
	@Override
	public String join(LoginDto m, RedirectAttributes rttr) {
		
		// 빈 필드 검사
		if(
		        m.getId().isEmpty() ||
		        m.getPassword().isEmpty() ||
		        m.getEmail().isEmpty() ||
		        m.getName().isEmpty() ||
		        m.getBirthday().isEmpty() ||
		        m.getTel().isEmpty())
		{
			rttr.addFlashAttribute("msg","빈 칸을 입력해주세요.");
			return "redirect:/join";
		}
		loginRepository.insertUser(m);
		loginRepository.playList(m);
		rttr.addFlashAttribute("msg", "회원가입성공");

		return "redirect:/";
	}

	public int check(LoginDto m) {
		int result = loginRepository.check(m);
		return result;
	}
}
