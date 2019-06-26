package org.project.control;

import java.util.List;

import org.project.domain.BoardVO;
import org.project.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/list.do")
	public String boardList(Model model) {
		List<BoardVO> list =service.boardList();		
		model.addAttribute("blist", list);
		return "/board/list";
	}
	@GetMapping("/reg.do")
	public void boardRegForm() {	
	}
	@PostMapping("/reg.do")
	public String boardReg(BoardVO vo) {
		service.regBoard(vo);
		return "redirect:list.do";
	}
	@GetMapping({"/get.do","/modify.do"})
	public void get(Model model,@RequestParam("bno")long bno) {
		model.addAttribute("board",service.selBoard(bno));
	}
	@RequestMapping("/del.do")
	public String boardDel(@RequestParam("bno") long bno) {
		service.delBoard(bno);
		return "redirect:list.do";
	}
}
