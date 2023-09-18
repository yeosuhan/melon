package com.melon.dto.ticket;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TicketDto {

    private int ticketId;
    private String ticketName;
    private int ticketPrice;
    private String ticketComment;

}
