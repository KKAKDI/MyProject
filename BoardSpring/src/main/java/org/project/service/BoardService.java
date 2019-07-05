package org.project.service;

import java.util.List;

import org.project.domain.BoardVO;
import org.project.domain.Paging;

public interface BoardService {
	//public List<BoardVO> boardList();
	public List<BoardVO> boardList(Paging pg);
	public void regBoard(BoardVO vo);
	public void delBoard(long bno);
	public BoardVO selBoard(long bno);
	public boolean updateBoard(BoardVO vo);
	public int total(Paging pg);
}
