package org.project.service;

import java.util.List;

import org.project.domain.BoardVO;
import org.project.domain.Paging;
import org.project.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;


@Service
public class BoardServiceImpl implements BoardService {	
	
	@Autowired
	private BoardMapper bmapper;
	
	@Override
	public List<BoardVO> boardList(Paging pg) {		
		return bmapper.pagingList(pg);
	}

	@Override
	public void regBoard(BoardVO vo) {
		bmapper.insert(vo);
	}

	@Override
	public void delBoard(long bno) {
		bmapper.delete(bno);
	}

	@Override
	public BoardVO selBoard(long bno) {
		return bmapper.content(bno);
	}

	@Override
	public boolean updateBoard(BoardVO vo) {		
		return bmapper.update(vo)==1;
	}

	@Override
	public int total(Paging pg) {
		return bmapper.total(pg);
	}

}
