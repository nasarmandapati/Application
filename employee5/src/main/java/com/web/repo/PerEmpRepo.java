package com.web.repo;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.web.model.PerEmp;
import com.web.model.Pro;



@Repository
public interface PerEmpRepo extends CrudRepository<PerEmp,String> {

	
PerEmp findByEmail(String email);
PerEmp findByGender(String gender);

}
