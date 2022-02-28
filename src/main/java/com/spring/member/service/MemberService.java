package com.spring.member.service;

import java.util.List;

import com.spring.member.vo.MemberVo;

public interface MemberService {
	public List<MemberVo> selectListMember();

	public MemberVo selectOneMember(int sid);

	public int deleteMember(MemberVo memberVo);

	public int insertMember(MemberVo memberVo);
	
	public int updateMember(MemberVo memberVo);

}