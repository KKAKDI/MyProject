package org.project.mapper;

import java.util.List;

import org.project.domain.BoardVO;
import org.project.domain.Paging;

public interface BoardMapper {
	public List<BoardVO> list();
	public void insert(BoardVO vo);
	public void delete(long bno);
	public BoardVO content(long bno);
	public void update(BoardVO vo);
	//paging method
	public List<BoardVO> pagingList(Paging paging);
}
