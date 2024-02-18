package com.demo.table.stdVc.service;


import com.demo.table.stdVc.StandardVoca;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.demo.table.stdVc.repository.StandardVocaRepository;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StandardVocaService {

    private StandardVocaRepository standardVocaRepository;

    public List<StandardVoca> findAll() {
    	System.out.println("find");
        return standardVocaRepository.findAll();
    }

    public List<StandardVoca> findByAll(String stdVocaLgcNm, String engNm) {
    	System.out.println("findByAll");
        return standardVocaRepository.findByAll(stdVocaLgcNm, engNm);
    }

    public List<String> findStdClsfCd() {
    	System.out.println("findStdClsfCd");
        return standardVocaRepository.findStdClsfCd();
    }

    public List<StandardVoca> findBystdVocaLgcNm(String stdClsfCd, String stdVocaLgcNm, String engNm) {
    	System.out.println("findByStdClsfCd");
        return standardVocaRepository.findBystdVocaLgcNm(stdClsfCd, stdVocaLgcNm, engNm);
    }



}
