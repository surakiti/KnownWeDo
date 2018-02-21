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
    private int geocode;

    public Address() {
    }

    public Address(String province, String amphur, int geocode) {
        this.province = province;
        this.amphur = amphur;
        this.geocode = geocode;
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

    public int getGeocode() {
        return geocode;
    }

    public void setGeocode(int geocode) {
        this.geocode = geocode;
    }
    
    public static LinkedHashSet<Address> filterAddress(ArrayList<Campaign> campaign){
        LinkedHashSet<Address> totalAddress = new LinkedHashSet<>();
        for(Campaign camp:campaign){
            totalAddress.add(camp.getCampaignAddress());
        }
        return totalAddress;
    }
    
    public static boolean[] showCampaignByProvince(LinkedHashSet<Address> listAddress){
        boolean[] province = new boolean[97];
        for (Address address : listAddress) {
            province[address.getGeocode() / 100] = true;
        }
        return province;
    }
}
