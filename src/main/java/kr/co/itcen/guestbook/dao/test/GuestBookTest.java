package kr.co.itcen.guestbook.dao.test;

import java.util.List;

import kr.co.itcen.guestbook.dao.GuestBookDao;
import kr.co.itcen.guestbook.vo.GuestBookVo;

public class GuestBookTest {

	public static void main(String[] args) {
		insertGb();
//		deleteGb();
		printList();
	}

	private static void insertGb() {
		GuestBookDao gbD = new GuestBookDao();
		GuestBookVo vo = new GuestBookVo();
		
//		vo.setNo("");
		vo.setName("정의돈");
		vo.setPassword("1234");
		vo.setContents("내가 처음이다");
		gbD.insert(vo);
	}

	private static void printList() {
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = dao.select();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}
	
	private static void deleteGb() {
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo vo = new GuestBookVo();
		vo.setNo("3");
		vo.setPassword("1234");
		dao.delete(vo);
	}

	
	
	
	
}
