package com.hervais.dojoandninja.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hervais.dojoandninja.models.Dojo;
import com.hervais.dojoandninja.repositories.DojoRepository;

@Service
public class DojoService {
	
	@Autowired
	private DojoRepository dojoRepo;

	public DojoService(DojoRepository dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
	
	public List<Dojo> getAllDojo(){
		return this.dojoRepo.findAll();
	}
	
	public Dojo create(Dojo dojo) {
		return this.dojoRepo.save(dojo);
	}
	
	public Dojo update(Dojo dojo) {
		return this.dojoRepo.save(dojo);
	}
	
	public void delete(Long id) {
		this.dojoRepo.deleteById(id);
	}
	
	public Dojo findById(Long id) {
		return this.dojoRepo.findById(id).get();
	}
	

}
