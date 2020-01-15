package com.goodibooks.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodibooks.vo.BookImgVO;
import com.goodibooks.vo.BookInfoVO;
import com.goodibooks.vo.CategoryVO;

@Mapper
public interface BookMapper {

	BookInfoVO selectBookByBookNo(int book_no);
	List<BookImgVO> selectImgByBookNo(int book_no);
	List<BookInfoVO> selectBooks();
	int bookCount();
	List<CategoryVO> selectCategorys();
	int bookCountByCategoryNo(int category_no);
	
	
}
