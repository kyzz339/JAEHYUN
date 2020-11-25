package com.desert.demo.QuestionService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOPerQus;

@Service
public interface QuestionService {
	// 글작성
	public int write(String memberId, String title, String contents);
	// 글 수정 
	public int modify(int idx, String title, String contents);
	// 글 삭제
	public int delete(int idx);
	// 글목록
	public List<DTOPerQus> buyerList(String memberId);
	// 글 내용
	public DTOPerQus contentView(int idx);
	// 관리자 게시물 리스트 표시 ( 미 답변 )
	public List<DTOPerQus> noReplyList();
	// 관리자 게시물 리스트 표시 ( 답변 완료)
	public List<DTOPerQus> replyedList();
	// 관리자 게시물 리스트 표시 (전부 표시)
	public List<DTOPerQus> allList();
	// 관리자 답변 달기
	public int writeReply(int idx, String answer_contents);
	// 관리자 답변 수정
	public int modifyReply(int idx, String answer_contents);
	// 관리자 답변 삭제
	public int deleteReply(int idx);
}
