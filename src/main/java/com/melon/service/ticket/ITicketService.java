package com.melon.service.ticket;

import com.melon.dto.ticket.TicketDto;

import java.util.List;

public interface ITicketService {

    /**
     * 티켓 조회
     * @author 임휘재 (2023.09.11)
     */
    TicketDto getTicketSaleOne(int ticketId);
}
