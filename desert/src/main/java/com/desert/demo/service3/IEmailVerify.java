package com.desert.demo.service3;

import com.desert.demo.dto.DTOMember;

public interface IEmailVerify {
	//이메일 인증
	public Boolean doEmailVerify(DTOMember member);

}
