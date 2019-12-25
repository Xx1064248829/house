package com.mooc.house.common.model;

import java.util.*;

public class Test {

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public static void main(String[] args) {
        Agency agency = new Agency();
        agency.setId(111);
        Agency agency1 = new Agency();
        agency1.setId(111);
        System.out.println(agency.equals(agency1));
        List<Agency> agencies = new ArrayList<>();
        agencies.add(agency);
        System.out.println(agencies.contains(agency1));
        Set<Agency> agencySet = new HashSet<>();
        agencySet.add(agency);
        System.out.println(agencySet.contains(agency1));

        Test test =new Test();
        test.setId(1);
        Test test1=new Test();
        test1.setId(1);
        System.out.println(test.equals(test1));
    }
}
