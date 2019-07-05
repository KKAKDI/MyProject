package org.project.control;

import java.util.List;

import org.project.domain.BoardVO;
import org.project.domain.PageDTO;
import org.project.domain.Paging;
import org.project.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/list.do")
	public String boardList(Model model,Paging pg) {					
		model.addAttribute("blist", service.boardList(pg));
		int total = service.total(pg);
		model.addAttribute("pageMaker",new PageDTO(pg,total));
		return "/board/list";
	}
	@GetMapping("/reg.do")
	public String boardRegForm() {	
		return "/board/reg";
	}
	@PostMapping("/reg.do")
	public String boardReg(BoardVO vo, RedirectAttributes rttr) {
		log.info("VO: "+vo);
		service.regBoard(vo);
		rttr.addFlashAttribute("result",vo.getBno());
		return "redirect:list.do";
	}
	@GetMapping({"/get.do","/modify.do"})
	public void get(@RequestParam("bno")long bno,@ModelAttribute("pg")Paging pg,Model model) {
		log.info("get & modi");
		model.addAttribute("board",service.selBoard(bno));		
	}
	@PostMapping("/modify.do")
	public String modify(BoardVO vo,@ModelAttribute("pg")Paging pg,RedirectAttributes rttr) {
		if(service.updateBoard(vo)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("pageNum",pg.getPageNum());
		rttr.addAttribute("amount",pg.getAmount());
		return "redirect:list.do";
	}
	@RequestMapping("/del.do")
	public String boardDel(@RequestParam("bno") long bno) {
		service.delBoard(bno);
		return "redirect:list.do";
	}
}
