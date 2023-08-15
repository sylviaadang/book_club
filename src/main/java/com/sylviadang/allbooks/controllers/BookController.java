package com.sylviadang.allbooks.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sylviadang.allbooks.models.Book;
import com.sylviadang.allbooks.services.BookService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/books")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@GetMapping("/create")
	public String createBook(@ModelAttribute("book") Book book) {
		return "book/create.jsp";
	}
	
	@PostMapping("")
	public String processNewBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if (result.hasErrors()) {
			return "book/create.jsp";
		}
		bookService.create(book);
		return "redirect:/";
	}
	
	@GetMapping("/showOne/{id}")
	public String getBook(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.getOne(id));
		return "book/one.jsp";
	}
	
	
	@GetMapping("/edit/m/{id}")
	public String editBook(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.getOne(id));
		return "book/edit.jsp";
	}
	
	@PatchMapping("/{id}")
	public String processeditBook(@Valid @ModelAttribute("book") Book book, BindingResult result) {
		if(result.hasErrors()) {
			return "book/edit.jsp";
		}
		bookService.update(book);
		return "redirect:/";
	}	
	
	@DeleteMapping("/{id}")
	public String deleteBook(@PathVariable("id") long id) {
		bookService.delete(id);
		return "redirect:/";
	}
}
