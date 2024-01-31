package com.demo.table.stdVc.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.demo.table.stdVc.StandardVoca;

import java.util.List;


@Repository
public interface StandardVocaRepository extends  JpaRepository<StandardVoca,Integer> {

    List<StandardVoca> findAll();

    @Query(value ="select distinct std_clsf_cd from standard_voca", nativeQuery = true)
    List<String> findStdClsfCd();

    @Query(value ="select * from standard_voca where std_clsf_cd = :stdClsfCd and std_voca_lgc_nm like %:stdVocaLgcNm% and eng_nm like %:engNm%", nativeQuery = true)
    List<StandardVoca> findBystdVocaLgcNm(String stdClsfCd, String stdVocaLgcNm, String engNm);
}
