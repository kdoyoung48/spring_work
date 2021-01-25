package com.gura.spring04.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.gura.spring04.member.dto.MemberDto;
//component scan 을 통해서 bean 이 되도록 어노테이션을 붙여 준다.
//Dao 에는 @Reposiory 라는 어노테이션을 붙여야 한다.
public class MemberDaoImpl implements MemberDao{
	/*
	 * servlet-context.xml 문서에 bean 설정으로 bean 이 된
	 * SqlSessionTemplate 객체의 참조값을 필드에 주입(DI) 받는 방법
	 * @AutoWired 어노테이션을 필드 선언 앞이나 위에 붙여줌녀 된다.
	 * 단,MemberDaoImpl 객체도 bean 이 되어야한다.
	 * 
	 */
	@Autowired
	private SqlSession session;
	@Override
	public List<MemberDto> getList() {
		//끝
		List<MemberDto> list=session.selectList("member.getList");
		return null;
	}

}
