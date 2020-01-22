package com.goodibooks.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.goodibooks.service.AdminService;
import com.goodibooks.vo.BookImgVO;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;
import com.goodibooks.vo.MemberVO;
import com.goodibooks.vo.PublisherVO;

@Controller
@RequestMapping(path = {"/admin/"})
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	//어드민 페이지로 이동
	@GetMapping(path = {"/admin.action"})
	public String toAdmin(Model model) {
		
		List<MemberVO> list = adminService.showMemberList();
		model.addAttribute("list", list);
		
		return "account/admin";
	}
	
	// 책 등록 페이지로 이동
	@GetMapping(path = {"/register.action"})
	public String toRegister() {
			
		return "admin/register";
	}
	
	// 책 등록 페이지 이동
	@GetMapping(path= {"/bookRegister"})
	public String bookRegister(Model model) {

		// 카테고리 목록 조회
		List<CategoryVO> categorys = adminService.showCategory();
		model.addAttribute("categorys", categorys);
		
		// 출판사 목록 조회
		List<PublisherVO> publishers = adminService.showPublisher();
		model.addAttribute("publishers", publishers);
		
		return "/admin/book-register";
	}
	
	// 책등록 실행
	@PostMapping(path= {"/bookRegister"})
	public String bookRegist(BookInfoVO bookinfo, @RequestParam("bookImg") MultipartFile[] files, HttpServletRequest req) {
		
		// bookInfo 정보 DB저장
		//adminService.bookRegist(bookinfo);
		
		// 이미지 파일 DB저장	
		ArrayList<BookImgVO> BookImgs = new ArrayList<BookImgVO>();
		
		ServletContext application = req.getServletContext();
		String path = application.getRealPath("/resources/file/bookImg");
		
		for (MultipartFile file : files) {
			
			BookImgVO bookImg = new BookImgVO();
			
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			
			try {
				File f = new File(path, fileName);
				if (f.exists()) {
					f.delete();
				}
				file.transferTo( f ); //파일 저장
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			
			bookImg.setImg(fileName);
			BookImgs.add(bookImg);
			
		}
		
		bookinfo.setIntro(bookinfo.getIntro().replace("\r\n","<br>"));
		bookinfo.setContents(bookinfo.getContents().replace("\r\n",  "<br>"));

		adminService.bookRegister(bookinfo, BookImgs);
		
		return "redirect:/book/list.action";
	}
	
	// 출판사 등록 페이지로 이동
	@GetMapping(path= {"/toPubRegist"})
	public String toPubRegist(Model model) {
		
		List<PublisherVO> publishers = adminService.showPublisher();
		model.addAttribute("publishers", publishers);
		
		return "admin/pub-regist";
	}

	// 출판사 등록
	@PostMapping(path= {"/pubRegist"})
	@ResponseBody
	public String pubRegist(PublisherVO publisher) {
		
		adminService.pubRegist(publisher);
		
		return "success";
	}
	
	@GetMapping(path= {"/showPub"})
	public String ShowPub(Model model) {
		
		List<PublisherVO> publishers = adminService.showPublisher();
		model.addAttribute("publishers", publishers);
		
		return "admin/pub-list";
	}
	

}
