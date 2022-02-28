package com.spring.member.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.member.service.MemberService;
import com.spring.member.vo.MemberVo;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/selectListMember")
	public String selectListMember(Model model) {
		List<MemberVo> memberList = memberService.selectListMember();
		model.addAttribute("memberList", memberList);

		return "MemberList";
	}
	
	@RequestMapping("/selectOneMember/{sid}")
	public String selectOneMember(@PathVariable int sid, Model model) {
		MemberVo member = memberService.selectOneMember(sid);
		model.addAttribute("member", member);
		
		return "MemberUpdate";
	}
	
	@RequestMapping("/deleteMember/{sid}")
	public String deleteMember(@PathVariable int sid, Model model) {
		MemberVo memberVo = new MemberVo();
		memberVo.setSid(sid);
		int result = memberService.deleteMember(memberVo);
		return  "redirect:/selectListMember";		
	}
	
	//등록 페이지로 이동하는 것
	@RequestMapping("/insertMemberPage")
	public String insertMemPage(Model model) {
		return "MemberInsert";
	}
	
	//등록 페이지로 이동 뒤 등록하는 과정. 등록하고 다시 list로 돌려준다.
	@RequestMapping("/insertMember")
	public String insertMember(MemberVo memberVo, Model model) {
		int result = memberService.insertMember(memberVo);
		return  "redirect:/selectListMember";	
		
	}
	
	@RequestMapping("/updateMember")
	public String updateMember(MemberVo memberVo, Model model) {
		int result = memberService.updateMember(memberVo);
		return "forward:/selectOneMember/" + memberVo.getSid(); 	
		/*return "MemberUpdate";*/
	}
	
}
