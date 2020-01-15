package com.goodibooks.service;

import java.util.List;

import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;

public interface BookService {

	BookInfoVO showBookDetailByBookNo(int book_no);
	List<BookInfoVO> showBookList();
	List<CategoryVO> getCategoryList();
	
}
