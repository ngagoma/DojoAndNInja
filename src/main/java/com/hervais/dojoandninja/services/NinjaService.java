package com.hervais.dojoandninja.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hervais.dojoandninja.models.Ninja;
import com.hervais.dojoandninja.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepo;

//	public NinjaService(NinjaRepository ninjaRepo) {
//		this.ninjaRepo = ninjaRepo;
//	}
	
	public List<Ninja> getAllNinja(){
		return this.ninjaRepo.findAll();
	}
	
	public Ninja create(Ninja ninja) {
		return this.ninjaRepo.save(ninja);
	}
	
	public Ninja update(Ninja ninja) {
		return this.ninjaRepo.save(ninja);
	}
	
	public void delete(Long id) {
		this.ninjaRepo.deleteById(id);
	}
	
	public Ninja findById(Long id) {
		return this.ninjaRepo.findById(id).get();
	}
	
	
	
//	public List<Ninja> findAllNinja(Long id) {
//		
//		List<Ninja>ninjaList;
//		
//		for(Ninja list: ninjaList) {
//			
//		}
//		
//		return this.ninjaRepo.findAllById(id);
//	}
	
	
	
	

}
