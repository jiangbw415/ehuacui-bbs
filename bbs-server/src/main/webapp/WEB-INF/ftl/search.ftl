<#include "./common/layout.ftl"/>
<@html page_tab="" page_title="搜索结果">
<div class="row">
    <div class="col-md-9">
        <div class="panel panel-default">
            <div class="panel-heading">搜索结果</div>
            <#include "./components/searchresult.ftl"/>
            <@searchresult topics=page.list/>
            <div class="panel-body" style="padding: 0 15px;">
                <#include "./components/paginate.ftl"/>
                    <@paginate currentPage=page.pageNumber totalPage=page.totalPage actionUrl="/search" urlParas="&q=${q!}" showdivide="no"/>
            </div>
        </div>
    </div>
    <div class="col-md-3 hidden-sm hidden-xs"></div>
</div>
</@html>
