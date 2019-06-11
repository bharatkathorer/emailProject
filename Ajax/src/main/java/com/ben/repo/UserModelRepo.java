package com.ben.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ben.model.UserModel;

public interface UserModelRepo extends JpaRepository<UserModel, Integer>{

	@Query("from UserModel where Name Like %?1%")
	List<UserModel> findByName(String name);
	@Query("from UserModel where email Like %?1%")
	List<UserModel> findByGmail(String page);

}
