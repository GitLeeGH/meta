package com.demo.table.doMain.repository;

import com.demo.table.doMain.DoMain;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DoMainRepository extends JpaRepository<DoMain, Integer> {


    @Query(value ="select distinct std_clsf_cd from domain", nativeQuery = true)
    List<String> findStdClsfCd();

    @Query(value ="select * from domain where domn_lgc_nm like %:dmnLnm%", nativeQuery = true)
    List<DoMain> findByAll(String dmnLnm);

    @Query(value ="select * from domain where std_clsf_cd = :stdClsfCd and domn_lgc_nm like %:dmnLnm%", nativeQuery = true)
    List<DoMain> findByOption(String stdClsfCd, String dmnLnm);
}
