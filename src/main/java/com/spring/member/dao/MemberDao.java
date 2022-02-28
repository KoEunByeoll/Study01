package com.spring.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.member.vo.MemberVo;

@Repository
public interface MemberDao {

	public List<MemberVo> selectListMember();
	public MemberVo selectOneMember(int sid);
	public int deleteMember(MemberVo memberVo);
	public int insertMember(MemberVo memberVo);
	public int updateMember(MemberVo memberVo);
	
}
