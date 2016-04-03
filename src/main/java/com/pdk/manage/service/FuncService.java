package com.pdk.manage.service;

import com.pdk.manage.dto.sm.FuncDto;
import com.pdk.manage.model.sm.Func;

import java.util.List;

/**
 *
 */
public interface FuncService {

    List<Func> findAllFunc();

    List<FuncDto> getFuncTreeList();

    List<FuncDto> getPermissionFuncTreeList(String roleId);

    List<Func> getPermissionFunc(List<String> roleIds);

}
