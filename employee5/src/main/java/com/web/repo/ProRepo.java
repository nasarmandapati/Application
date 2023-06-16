package com.web.repo;

import org.springframework.data.repository.CrudRepository;


import com.web.model.Pro;

public interface ProRepo extends CrudRepository<Pro, String> {
	
	Pro findByEmail(String email);
	
	
	Pro findByExpy(String expy);
	
	Pro findByExpctc(String expctc);
	Pro findByCulocation(String culocation);
	Pro findByPskills(String pskills);
	Pro findByDomain(String domain);
	

}
