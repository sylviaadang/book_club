package com.sylviadang.allbooks.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sylviadang.allbooks.models.Book;
import com.sylviadang.allbooks.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public Book getOne(long id) {
        Optional<Book> book = bookRepository.findById(id);
        return book.isPresent() ? book.get() : null;
    }

    public List<Book> getAll() {
        return (List<Book>) bookRepository.findAll();
    }

    public Book create(Book book) {
        return bookRepository.save(book);
    }

    public Book update(Book book) {
        return bookRepository.save(book);
    }

    public void delete(Long id) {
        bookRepository.deleteById(id);
    }

}
