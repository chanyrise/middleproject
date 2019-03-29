package com.pet;

import java.util.List;


public interface PetDao {
	public List<PetVo> getPetAll();
	public int getPetInsert(PetVo petVo);
	public int getPetDelete(String p_name);
	public int getPetUpdate(PetVo petVo);

}
