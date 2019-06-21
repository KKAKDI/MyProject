package org.project.service;

import java.util.List;

import org.project.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> boardList();
	public void regBoard(BoardVO vo);
	public void delBoard(long bno);
	public BoardVO selBoard(long bno);
	public void updateBoard(BoardVO vo);
}
