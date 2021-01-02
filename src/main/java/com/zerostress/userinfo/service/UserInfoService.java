package com.zerostress.userinfo.service;

import com.zerostress.command.MbtiVO;
import com.zerostress.command.PersonalityVO;
import com.zerostress.command.UserInfoVO;

public interface UserInfoService {

	public int idCheck(UserInfoVO vo); //아이디 중복확인
	public int join(UserInfoVO vo); //회원가입
	public UserInfoVO info(String userId); //회원정보
	public int update(UserInfoVO vo); //회원정보 수정
	public int userCheck(UserInfoVO vo); //회원정보-userId확인
	public int pwUpdate(UserInfoVO vo); //회원정보-pw수정
	public int pwCheck(UserInfoVO vo); //회원탈퇴->pw확인
	public int delete(String userId); //회원탈퇴
	public int kakaoJoin(UserInfoVO vo); //카카오톡 회원 등록
	public int kakaoRegist(UserInfoVO vo); //카카오톡 로그인 확인
	public int kakaoStatusCheck(UserInfoVO vo); //status-kakao확인
	public int userStatusCheck(UserInfoVO vo); //status-default확인
	public int emailCheck(String userEmail);
	
	public int pwFindUpdate(String uuids, String getMail);
	
	
	public PersonalityVO personality(int pno);
	public PersonalityVO mbtiForm(int pno);
	
	public int mypageUpdate(MbtiVO vo);
	public MbtiVO mypageInfo(String userId);
	
	public int certification(String userId);
	
	public String receiveMail(String userId);
}
