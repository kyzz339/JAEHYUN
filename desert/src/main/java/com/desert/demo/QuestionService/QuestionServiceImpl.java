package com.desert.demo.QuestionService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desert.demo.dto.DTOPerQus;
import com.desert.demo.mapper.QuestionMapper;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	QuestionMapper mapper;
	
	@Autowired
	DTOPerQus dtoPerQus;
	
	@Override
	public int write(String memberId, String title, String contents) {
		
		int nResult = mapper.insertQuestion(title, contents, memberId);
		System.out.println("질문이 등록되었습니다.");
		
		return nResult;
	}

	@Override
	public int modify(int idx, String title, String contents) {
		
		int nResult = mapper.updateQuestion(idx, title, contents);
		System.out.println("질문이 수정되었습니다.");
		
		return nResult;
	}

	@Override
	public int delete(int idx) {
		
		int nResult = mapper.deleteQuestion(idx);
		System.out.println("답변이 수정되었습니다.");
		
		return nResult;
	}

	@Override
	public List<DTOPerQus> buyerList(String memberId) {

		String id = memberId;
		
		List<DTOPerQus> buyerQuestionList = mapper.getListBuyerQuestion( id);
		
		return buyerQuestionList;
	}

	@Override
	public DTOPerQus contentView(int idx) {
	
		return mapper.selectQuestion(idx);
	}

	@Override
	public List<DTOPerQus> noReplyList() {
		
		List<DTOPerQus> noReplyQuestionList = mapper.getNoReplyQuestionList();
		
		return noReplyQuestionList;
	}

	@Override
	public List<DTOPerQus> replyedList() {
		
		List<DTOPerQus> replyedQuestionList = mapper.getNoReplyQuestionList();
		
		return replyedQuestionList;
	}

	@Override
	public List<DTOPerQus> allList() {
		
		List<DTOPerQus> allList = mapper.getAllQuestionList();
		
		return allList;
	}

	@Override
	public int writeReply(int idx, String answerContents) {

		int nResult = mapper.replyCheck(idx);
		
		if(nResult < 1) {
			mapper.insertReply(idx, answerContents);
			System.out.println("답변이 달려있지 않습니다.");
			return nResult;
		}else {
			System.out.println("이미 답변이 달려있습니다.");
			return nResult;
		}
	}

	@Override
	public int modifyReply(int idx, String answerContents) {
		int nResult = mapper.replyCheck(idx);
		
		if(nResult < 1) {
			System.out.println("답변이 없어 수정 불가능");
			return nResult;
		}else {
			mapper.insertReply(idx, answerContents);
			System.out.println("답변이 수정되었습니다.");
			return nResult;
		}
	}

	@Override
	public int deleteReply(int idx) {
		
		int nResult = mapper.deleteReply(idx);
		System.out.println("답변이 삭제되었습니다.");
		return nResult;
	}

}
