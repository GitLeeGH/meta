package com.demo.table.doMain.service;

import com.demo.table.doMain.DoMain;
import com.demo.table.doMain.repository.DoMainRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class DoMainService {

    private DoMainRepository doMainRepository;

    public List<String> findStdClsfCd() {
        System.out.println("findStdClsfCd");
        return doMainRepository.findStdClsfCd();
    }

    public List<DoMain> findByAll(String dmnLnm) {
        System.out.println("findByAll");
        return doMainRepository.findByAll(dmnLnm);
    }

    public List<DoMain> findByOption(String stdClsfCd, String dmnLnm) {
        System.out.println("findByOption");
        return doMainRepository.findByOption(stdClsfCd, dmnLnm);
    }
}
