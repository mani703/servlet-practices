package com.douzone.guestbook.dao.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		countOfListTest();
//		insertTest();
//		findAllTest();
	}

	private static void findAllTest() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}

	private static void insertTest() {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String regDate = format.format(date);
		GuestbookVo vo = new GuestbookVo();
		vo.setName("도우너");
		vo.setPassword("1234");
		vo.setMessage("바이");
		vo.setRegDate(regDate);
		new GuestbookDao().insert(vo);
	}

	private static void countOfListTest() {
		int count = new GuestbookDao().countOfList();
		System.out.println(count);
	}

	
}
