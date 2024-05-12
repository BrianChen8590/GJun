package dao;

import java.util.List;

import model.Chat;

public interface ChatDao {
	// cresate
	void add(Chat c);

	// read
	List<Chat> queryAll();

	// update

	// delete

}