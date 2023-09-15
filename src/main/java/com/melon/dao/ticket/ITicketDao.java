package com.melon.dao.ticket;

import com.melon.dto.ticket.TicketDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ITicketDao {

    /**
     * 티켓 조회
     * @author 임휘재 (2023.09.11)
     */
    TicketDto ticketSaleOne(int ticketId);
}
