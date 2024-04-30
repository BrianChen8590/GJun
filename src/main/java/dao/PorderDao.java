package dao;

import java.util.List;

import model.Porder;

public interface PorderDao {
	//create
	void add(Porder p);
	
	//read
	List<Porder> selectAll();
	Porder selectById(int id);
	
	//update
	void update(Porder p);
	
	
	//delete
	void deleteById(int id);

}
