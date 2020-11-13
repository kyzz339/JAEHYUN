package com.desert.demo.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class DTOMail {
    private String address;
    private String title;
    private String message;
}
