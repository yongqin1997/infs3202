package pizza.service;

import java.util.List;

import pizza.pojo.User;



public interface UserService {
	
	void add(User u);
	void delete(int id);
	void update(User u);
	User get(int id);
	User get(String name, String password);
	List list();
	boolean isExist(String name);
	

}
