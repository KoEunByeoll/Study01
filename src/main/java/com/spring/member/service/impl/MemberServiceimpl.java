package com.spring.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.member.dao.MemberDao;
import com.spring.member.service.MemberService;
import com.spring.member.vo.MemberVo;

@Service
public class MemberServiceimpl implements MemberService {

	@Autowired
	private MemberDao memberDao;

	public List<MemberVo> selectListMember() {

		List<MemberVo> memberList = memberDao.selectListMember();

		return memberList;

	}

	public MemberVo selectOneMember(int sid) {

		MemberVo member = memberDao.selectOneMember(sid);
		return member;
	}

	public int deleteMember(MemberVo memberVo) {
		return memberDao.deleteMember(memberVo);
	}

	public int insertMember(MemberVo memberVo) {
		return memberDao.insertMember(memberVo);
	}
	
	public int updateMember(MemberVo memberVo) {
		return memberDao.updateMember(memberVo);
	}
}
