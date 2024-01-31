package com.demo.table.stdVc;

import lombok.*;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;


@Data
@Entity(name="standard_voca")
@NoArgsConstructor
@DynamicUpdate
@Getter
@Setter
public class StandardVoca {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String standardVocaId;
    private String stdClsfCd;
    private String stdVocaLgcNm;
    private String stdVocaPhysNm;
    private String engNm;
    private String chncrtNm;
    private String srcSeNm;
    private String expln;
    private String frstDmndDt;
    private String frstRqstrNm;
    private String dmndDt;
    private String rqstrNm;
    private String aprvDt;
    private String autzrNm;

    @Builder
    public StandardVoca(String standardVocaId, String stdClsfCd, String stdVocaLgcNm, String stdVocaPhysNm, String engNm, String chncrtNm, String srcSeNm, String expln, String frstDmndDt, String frstRqstrNm, String dmndDt, String rqstrNm, String aprvDt, String autzrNm) {
        this.standardVocaId = standardVocaId;
        this.stdClsfCd = stdClsfCd;
        this.stdVocaLgcNm = stdVocaLgcNm;
        this.stdVocaPhysNm = stdVocaPhysNm;
        this.engNm = engNm;
        this.chncrtNm = chncrtNm;
        this.srcSeNm = srcSeNm;
        this.expln = expln;
        this.frstDmndDt = frstDmndDt;
        this.frstRqstrNm = frstRqstrNm;
        this.dmndDt = dmndDt;
        this.rqstrNm = rqstrNm;
        this.aprvDt = aprvDt;
        this.autzrNm = autzrNm;
    }



}
