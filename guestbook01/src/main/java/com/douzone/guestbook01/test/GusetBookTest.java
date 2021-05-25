package com.douzone.guestbook01.test;

import java.util.List;


import com.douzone.guestbook01.dao.GuestBookDao;
import com.douzone.guestbook01.vo.GuestBookVo;

public class GusetBookTest {

	public static void main(String[] args) {
		//insertTest();
		deleteTest();
		findAllTest();
	}

	private static void findAllTest() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for (GuestBookVo vo : list) {
			System.out.println(vo);
		}

	}
	
	private static void insertTest() {
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("홍길순");
		vo.setPassword("4321");
		vo.setMessage("안녕히가세요!");	
		
		new GuestBookDao().insert(vo);

	}
	
	private static void deleteTest() {
		GuestBookVo vo = new GuestBookVo();
		vo.setNo(1);
		new GuestBookDao().delete(vo);
	}
}
