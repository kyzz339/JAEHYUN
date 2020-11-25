package com.desert.demo.mapper;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.desert.demo.dto.DTOMember;

@Mapper
public interface MemberMapper {
	
//	 1.회원 가입
	 public int insertMember(DTOMember dtoMember);
 
//	 2.회원 정보 수정
	 public int updateMember(DTOMember dtoMember, 
			 					@Param("id") String id);
	 
// 	 3.회원 타입조회 (나중에 블럭기능 추가 시)
	 public int checkMemberType(@Param("id") String id);
	 
//	 4.회원 정보 조회 ( Session에 값 저장 )
	 public DTOMember getMemberInfo(@Param("id") String id);
	 
//	 5. 아이디 중복 확인
	 public int overlapID(@Param("id") String id);
		 	 
//   6.아이디 찾기
	 public int findID(@Param("name") String name,
			 		@Param("email") String email);
	 
	 public DTOMember getID(@Param("name") String name,
						@Param("email") String email);
	 
//   7.비밀번호 찾기
//	 public int findPW(@Param("pw") String pw,
//					 @Param("name") String name, 
//					 @Param("email") String email);
	 
		public DTOMember findPW(DTOMember dtoMember);

	 
// 	 8. 비밀번호 재 확인 (마이페이지 수정 전)
	 public int pwCheck(@Param("id") String id,
			 			@Param("pw") String pw);
	 
//	 9. 로그인
//	 public int login(@Param("id") String id,
//			 		  @Param("pw") String pw);
	 
	 
	 public int login(DTOMember dtoMember);

		public int pwReset(@Param("id")String id,@Param("pw") String pw);

}
