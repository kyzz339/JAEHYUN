package com.desert.demo.service.login;

import java.util.concurrent.ThreadLocalRandom;

//이메일 인증 코드 난수 생성기입니다. -최현석
// 6자리의 int를 반환합니다.
public class VerifyCodeGenerate {
	public int makeCode() {
		 return ThreadLocalRandom.current().nextInt(100000, 1000000);
	}

	public static void main(String[] args) {
		VerifyCodeGenerate a = new VerifyCodeGenerate();
		System.out.println(a.makeCode());

	}
}
