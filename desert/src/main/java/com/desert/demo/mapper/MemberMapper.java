package com.desert.demo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.desert.demo.dto.DTOMember;

@Mapper
public interface MemberMapper {
	
//	 1.회원 가입
//	<!-- 회원타입 : 0 미인증, 1 이메일 인증 회원, 구매자 2 판매자 미승인 3판매자 4관리자 -->
	 public int insertBuyerMember(DTOMember dtoMember);
	 public int insertSellerMember(DTOMember dtoMember);
	 
//	 2.회원 정보 수정
	 public int updateBuyerMember(DTOMember dtoMember, 
			 					@Param("id") String id);
	 public int updateSellerMember(DTOMember dtoMemeber,
			 					@Param("id") String id);

//	 3.회원 블락 시키기
	 public int doBlockMember(@Param("id") String id);
	 public int 
	 
// 	 4.회원 타입조회
//	 0 : 이메일 미승인 회원 // 1 : 구매자 // 2: 판매자 미승인 // 3 : 판매자 승인 // 4: 관리자
	 public int checkMemberType(@Param("id") String id);
	 
//   5.회원 블락조회
	 public int checkMemberBlock(@Param("id") String id);
	 
//	 6.회원 정보 조회
	 public DTOMember getMemberInfo(@Param("id") String id);
	 public int overlapID(@Param("id") String id);
		 
//   7.인증, 승인
	 public Boolean doEmailVerify(DTOMember member);
	 
//  8.아이디 찾기
	 public int findID(@Param("id") String id,
			 		@Param("email") String email);
	 
//  9.비밀번호 찾기
	 public int findPW(@Param("pw") String pw,
					 @Param("name") String name, 
					 @Param("email") String email);
	 
// 	10. 비밀번호 재 확인 (마이페이지 수정 전)
	 public int pwCheck(@Param("pw") String pw);
	 
//	11. 로그인
	 public int login(@Param("id") String id,
			 		  @Param("pw") String pw);

}
