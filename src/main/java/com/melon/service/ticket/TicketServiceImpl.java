package com.melon.service.ticket;

import com.melon.dao.ticket.ITicketDao;
import com.melon.dto.ticket.TicketDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class TicketServiceImpl implements ITicketService{

    private final ITicketDao ticketDao;

    /**
     * 티켓 조회
     * @author 임휘재 (2023.09.11)
     */
    @Override
    public TicketDto getTicketSaleOne(int ticketId) {
        return ticketDao.ticketSaleOne(ticketId);
    }
}
