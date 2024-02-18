package com.demo.table.doMain;

import lombok.*;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;

@Data
@Entity(name="domain")
@NoArgsConstructor
@DynamicUpdate
@Getter
@Setter
public class DoMain {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String domnId;
    private String stdClsfCd;
    private String domnLgcNm;
    private String domnPhysNm;
    private String domnGroupNm;
    private String infoTyNm;
    private String datTyNm;
    private int lenh;
    private int dcptLenh;
    private String cdVlTypeCd;
    private String prentDomnNm;
    private String encptYn;
    private String engNm;
    private String expln;
    private String frstDmndDt;
    private String frstRqstrNm;
    private String dmndDt;
    private String rqstrNm;
    private String aprvDt;
    private String autzrNm;


    @Builder
    public DoMain(String domnId, String stdClsfCd, String domnLgcNm, String domnPhysNm, String domnGroupNm, String infoTyNm, String datTyNm, int lenh, int dcptLenh, String cdVlTypeCd, String prentDomnNm, String encptYn, String engNm, String expln, String frstDmndDt, String frstRqstrNm, String dmndDt, String rqstrNm, String aprvDt, String autzrNm) {
        this.domnId = domnId;
        this.stdClsfCd = stdClsfCd;
        this.domnLgcNm = domnLgcNm;
        this.domnPhysNm = domnPhysNm;
        this.domnGroupNm = domnGroupNm;
        this.infoTyNm = infoTyNm;
        this.datTyNm = datTyNm;
        this.lenh = lenh;
        this.dcptLenh = dcptLenh;
        this.cdVlTypeCd = cdVlTypeCd;
        this.prentDomnNm = prentDomnNm;
        this.encptYn = encptYn;
        this.engNm = engNm;
        this.expln = expln;
        this.frstDmndDt = frstDmndDt;
        this.frstRqstrNm = frstRqstrNm;
        this.dmndDt = dmndDt;
        this.rqstrNm = rqstrNm;
        this.aprvDt = aprvDt;
        this.autzrNm = autzrNm;
    }



}
