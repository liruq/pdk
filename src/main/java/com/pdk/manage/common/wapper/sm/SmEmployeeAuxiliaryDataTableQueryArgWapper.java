package com.pdk.manage.common.wapper.sm;

import com.pdk.manage.common.wapper.AbstractDataTableQueryArgWapper;

import java.util.Arrays;
import java.util.List;

/**
 * Created by liuhm on 2015/8/14
 */
public class SmEmployeeAuxiliaryDataTableQueryArgWapper extends AbstractDataTableQueryArgWapper {
    @Override
    public List<String> getColNameList() {
        return Arrays.asList("", "id", "role_code", "role_name", "role_memo");
    }
}
