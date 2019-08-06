package com.testdev.cbzx;

import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


public class TestGetDay {
    public static List<String> getTwoDaysDay() {
        String dateStart = "2019-07-05";
        String dateEnd = "2019-07-15";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        List<String> dateList = new ArrayList<String>();
        try{
            Date dateOne = sdf.parse(dateStart);
            Date dateTwo = sdf.parse(dateEnd);

            Calendar calendar = Calendar.getInstance();
            calendar.setTime(dateTwo);

            dateList.add(dateEnd);
            while(calendar.getTime().after(dateOne)){ //倒序时间,顺序after改before其他相应的改动。
                calendar.add(Calendar.DAY_OF_MONTH, -1);
                dateList.add(sdf.format(calendar.getTime()));
            }
        } catch(Exception e){
            e.printStackTrace();
        }
        System.out.println(dateList);
        return dateList;
    }
}
