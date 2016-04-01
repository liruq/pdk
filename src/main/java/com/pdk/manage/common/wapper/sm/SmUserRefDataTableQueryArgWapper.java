package com.pdk.manage.common.wapper.sm;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.pdk.manage.common.wapper.AbstractDataTableQueryArgWapper;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by liuhm on 2015/8/14
 */
public class SmUserRefDataTableQueryArgWapper extends AbstractDataTableQueryArgWapper {
    @Override
    public List<String> getColNameList() {
        return Arrays.asList("","", "name", "real_name", "sex", "phone");
    }
}
