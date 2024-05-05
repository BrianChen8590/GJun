package dao;

import java.util.List;

import model.MemberQuerySum;
import model.Porder;

public interface PorderDao {
	//create
	void add(Porder p);
	
	//read
	List<Porder> selectAll();
	Porder selectById(int id);
	List<MemberQuerySum> selectBySum(int startSum,int endSum);
	List<MemberQuerySum> queryAll();
	
	
	//update
	void update(Porder p);
	
	
	//delete
	void deleteById(int id);

}