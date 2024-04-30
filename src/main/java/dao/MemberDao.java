package dao;

import model.Member;

public interface MemberDao {
	//create
	void add(Member m);
	
	//read
	Member selectMember(String username,String password);
	boolean selectByUsername(String username);
	
	
	//update
	
	
	//delete

}
