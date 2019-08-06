package com.testdev.cbzx;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CbzxApplicationTests {

    @Test
    public void contextLoads() {
    }



    @Test
    public void  getFirstDayOfMonth() {
        int year = 2019;
        int month = 2;
        Calendar cal = Calendar.getInstance();
        //设置年份
        cal.set(Calendar.YEAR, year);
        //设置月份
        cal.set(Calendar.MONTH, month - 1);
        //获取某月最小天数
        int firstDay = cal.getActualMinimum(Calendar.DAY_OF_MONTH);
        //设置日历中月份的最小天数
        cal.set(Calendar.DAY_OF_MONTH, firstDay);
        //格式化日期
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String firstDayOfMonth = sdf.format(cal.getTime());


        int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
        //设置日历中月份的最大天数
        cal.set(Calendar.DAY_OF_MONTH, lastDay);
        //格式化日期
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        String lastDayOfMonth = sdf1.format(cal.getTime());
        System.out.println(firstDayOfMonth);
        System.out.println(lastDayOfMonth);
    }

    @Test
    public void  getTwoDaysDay() {
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
        return ;
    }
}
