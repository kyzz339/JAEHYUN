package com.desert.demo.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class DTOCart {
    private int idx;  
    private int memberIdx;
    private int goodsIdx;
    private int goodsAmount;
}
