package com.desert.demo.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.desert.demo.dto.DTOPerQus;

@Mapper
public interface QuestionMapper {
//	================== 구매자 ===========================
	// 1. 게시물 올리기 
	public int insertQuestion(@Param("questionTitle") String questionTitle,
								@Param("questionContents") String questionContents,
								@Param("memberId") String memberId);
	
	// 2. 게시물 수정
	public int updateQuestion(@Param("idx") int idx,
								@Param("title") String title,
									@Param("contents") String contents);
	
	// 2-1. 답변 여부
	public int replyCheck(@Param("idx") int idx);
	
	// 3. 게시물 삭제
	public int deleteQuestion(@Param("idx") int idx);
	
	// 4. 구매자 게시물 리스트 표시
	public List<DTOPerQus> getListBuyerQuestion(@Param("memberId") String memberId);
		
	// 5. 게시물 조회
	public DTOPerQus selectQuestion(@Param("idx") int idx);
	
	
//	================== 관리자 ===========================
	
	// 5-1. 관리자 게시물 리스트 표시 (미답변)
	public ArrayList<DTOPerQus> getNoReplyQuestionList();
	
	// 5-2. 관리자 게시물 리스트 표시 (답변 완료)
	public ArrayList<DTOPerQus> getReplyQuestionList();
	
	// 5-3. 관리자 게시물 리스트 표시 (전부 표시)
	public ArrayList<DTOPerQus> getAllQuestionList();
	
	// 6. 관리자 답변 달기
	public int insertReply(@Param("idx") int idx,
							@Param("answerContents") String answerContents);
	
	// 7. 관리자 답변 수정
	public int updateReply(@Param("idx") int idx,
							@Param("answerContents") String answerContents);
	
	// 8. 관리자 답변 삭제
	public int deleteReply(@Param("idx") int idx);
	
//	================== 검색 ===========================
	
	// 9. 총 게시물 카운팅
	public int countAllQuestion();
	
	// 10. 미 답변 게시물 카운팅
	public int countNoReplyQuestion();
	
}
