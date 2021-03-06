<#include "../common/layout.ftl"/>
<@html page_title="添加权限" page_tab="setting">
<div class="row">
    <div class="col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading">
                添加权限
            </div>
            <div class="panel-body">
                <div class="panel-body">
                    <form action="/manage/addpermission" method="post" id="permissionForm">
                        <div class="form-group">
                            <label for="pid">父节点</label>
                            <select name="pid" id="pid" class="form-control">
                                <option value="0">添加父节点</option>
                                <#list permissions as permission>
                                    <option value="${permission.id!}"
                                            <#if pid?? && pid == permission.id>selected</#if>>
                                    ${permission.description!}
                                    </option>
                                </#list>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="name">权限标识</label>
                            <input type="text" id="name" name="name" class="form-control" placeholder="权限标识"/>
                        </div>
                        <div class="form-group">
                            <label for="url">授权地址</label>
                            <input type="text" id="url" name="url" class="form-control" placeholder="授权地址"/>
                        </div>
                        <div class="form-group">
                            <label for="description">权限描述</label>
                            <input type="text" id="description" name="description" class="form-control"
                                   placeholder="权限描述"/>
                        </div>
                        <button type="button" id="permissionBtn" onclick="permissionSubmit()"
                                class="btn btn-default btn-sm">保存
                        </button>
                        <span id="error_message"></span>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 hidden-sm hidden-xs"></div>
</div>
</@html>