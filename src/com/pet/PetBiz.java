package com.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PetBiz {
	
	@Autowired
	PetDao petDao;
	
	public List<PetVo> getAll(){
		return petDao.getAll();
	}

}
