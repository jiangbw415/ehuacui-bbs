package org.ehuacui.service;

import org.ehuacui.model.RolePermission;

import java.util.List;

/**
 * Created by jianwei.zhou on 2016/8/15.
 */
public interface IRolePermissionService {

    List<RolePermission> findByRoleId(Integer roleId);

    void deleteByPermissionId(Integer permissionId);

    void deleteByRoleId(Integer roleId);
}