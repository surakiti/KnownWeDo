/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.LinkedHashSet;

/**
 *
 * @author JVVQX
 */
public class Address {
    private String province;
    private String amphur;
    private int zipCode;

    public Address() {
    }

    public Address(String province, String amphur, int zipCode) {
        this.province = province;
        this.amphur = amphur;
        this.zipCode = zipCode;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getAmphur() {
        return amphur;
    }

    public void setAmphur(String amphur) {
        this.amphur = amphur;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }
    
    public static LinkedHashSet<Address> filterAddress(ArrayList<Campaign> campaign){
        LinkedHashSet<Address> totalAddress = new LinkedHashSet<>();
        for(Campaign camp:campaign){
            totalAddress.add(camp.getCampaignAddress());
        }
        return totalAddress;
    }
}
