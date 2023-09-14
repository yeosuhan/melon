package com.melon.controller.ticket;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ticket")
@Controller
public class TicketController {
	
	/**
	* 티켓 조회
	* @author 임휘재 (2023.09.06)
	*/
	
	@GetMapping("/sale")
	public String ticket_sale() {
		return "ticket/ticket_sale";
	}

	@GetMapping
	public String ticket() {
		return "ticket/ticket";
	}

}
