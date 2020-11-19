package com.desert.demo.dto;

import lombok.Data;

@Data
public class DTOCart {
    private int idx;  
    private int memberIdx;
    private int goodsIdx;
    private int goodsAmount;
}
