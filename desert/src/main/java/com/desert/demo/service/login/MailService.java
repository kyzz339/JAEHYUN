package com.desert.demo.service.login;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOMail;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MailService {
    private JavaMailSender mailSender;
    private static final String FROM_ADDRESS = "desert.adm.team@gmail.com";

    public void mailSend(DTOMail mailDto) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(mailDto.getAddress());
        message.setFrom(MailService.FROM_ADDRESS);
        message.setSubject(mailDto.getTitle());
        message.setText(mailDto.getMessage());

//        message.setTo("homer93@naver.com");
//        message.setFrom("desert.adm.team@gmail.com");
//        message.setSubject("Desert 회원 가입 이메일 인증");
//        message.setText("Desert 회원 가입해주셔서 감사합니다. 다음 링크를 눌러 이메일 인증을 완료해주세요.");
//        
        mailSender.send(message);
    }
}
