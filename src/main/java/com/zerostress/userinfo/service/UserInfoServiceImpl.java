package com.zerostress.userinfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerostress.command.MbtiVO;
import com.zerostress.command.PersonalityVO;
import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.mapper.UserInfoMapper;

@Service("userinfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userinfoMapper;

	@Override
	public int idCheck(UserInfoVO vo) {

		return userinfoMapper.idCheck(vo);
	}

	@Override
	public int join(UserInfoVO vo) {

		return userinfoMapper.join(vo);
	}

	@Override
	public UserInfoVO info(String userId) {

		return userinfoMapper.info(userId);
	}

	@Override
	public int update(UserInfoVO vo) {

		return userinfoMapper.update(vo);
	}

	@Override
	public int userCheck(UserInfoVO vo) {

		return userinfoMapper.userCheck(vo);
	}


	@Override
	public int pwCheck(UserInfoVO vo) {

		return userinfoMapper.pwCheck(vo);
	}

	@Override
	public int delete(String userId) {

		return userinfoMapper.delete(userId);
	}

	@Override
	public int kakaoJoin(UserInfoVO vo) {
		
		return userinfoMapper.kakaoJoin(vo);
	}


	@Override
	public int kakaoRegist(UserInfoVO vo) {
		
		return userinfoMapper.kakaoRegist(vo);
	}

	
	@Override
	public int kakaoStatusCheck(UserInfoVO vo) {
		
		return userinfoMapper.kakaoStatusCheck(vo);
	}
	

	@Override
	public int userStatusCheck(UserInfoVO vo) {
		return userinfoMapper.userStatusCheck(vo);
	}

	
	@Override
	public PersonalityVO personality(int pno) {
		PersonalityVO vo = userinfoMapper.personality(pno);
		return vo;
	}

	@Override
	public PersonalityVO mbtiForm(int pno) {

		return userinfoMapper.mbtiForm(pno);
	}

	@Override
	public int mypageUpdate(MbtiVO vo) {
		return userinfoMapper.mypageUpdate(vo);
	}

	@Override
	public MbtiVO mypageInfo(String userId) {
		MbtiVO vo = userinfoMapper.mypageInfo(userId);
		return vo;
	}

	@Override
	public int pwUpdate(UserInfoVO vo) {
		
		return userinfoMapper.pwUpdate(vo);
	}


	@Override
	public int emailCheck(String userEmail) {

		return userinfoMapper.emailCheck(userEmail);
	}

	@Override
	public int pwFindUpdate(String uuids, String getMail) {
		
		return userinfoMapper.pwFindUpdate(uuids, getMail);
	}

	@Override
	public int certification(String userId) {
		return userinfoMapper.certification(userId);
	}

	@Override
	public String receiveMail(String userId) {
		return userinfoMapper.receiveMail(userId);
	}

	




}
