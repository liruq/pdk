<%--
  Created by IntelliJ IDEA.
  User: liangyh
  Date: 2015/8/15
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
  String resourcePath = request.getServletContext().getInitParameter("resource_path") + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8"/>
  <title>跑的快 | 后台管理系统-商品种类</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <link href="<%=resourcePath%>static/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="<%=resourcePath%>static/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
  <link href="<%=resourcePath%>static/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="<%=resourcePath%>static/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="<%=resourcePath%>static/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
  <!-- END GLOBAL MANDATORY STYLES -->
  <link href="<%=resourcePath%>static/global/plugins/select2/select2.css" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" rel="stylesheet"
        type="text/css"/>

  <!-- BEGIN THEME STYLES -->
  <link href="<%=resourcePath%>static/global/css/components-rounded.css" id="style_components" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/global/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/admin/layout4/css/themes/light.css" id="style_color" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
  <link href="<%=resourcePath%>static/admin/css/index.css" rel="stylesheet" type="text/css"/>
  <!-- END THEME STYLES -->
  <link href="<%=resourcePath%>static/img/logo.ico" rel="shortcut icon"/>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-fixed page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<jsp:include page="../base/header.jsp"/>
<!-- BEGIN CONTAINER -->
<div class="page-container">
  <!-- BEGIN SIDEBAR -->
  <jsp:include page="../base/menu.jsp"/>
  <!-- END SIDEBAR -->
  <!-- BEGIN CONTENT -->
  <div class="page-content-wrapper">
    <div class="page-content">
      <ul class="page-breadcrumb breadcrumb">
      </ul>

      <div class="row">
        <div class="col-md-12">
          <!-- BEGIN EXAMPLE TABLE PORTLET-->
          <div class="portlet light bordered">
            <div class="portlet-title">
              <div class="caption">
                <i class="fa fa-list"></i>商品种类列表
              </div>
              <div class="tools">
                <a href="javascript:;" class="reload"></a>
              </div>
            </div>
            <div class="portlet-body">
              <div class="form-body">
                <div class="list_search" style="margin-bottom: 15px;">
                </div>

                <div class="table-toolbar">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="btn-group">
                        <a id="new_order" class="btn btn-default" data-toggle="modal" data-target="#goodsTypeDialog">
                          新增 <i class="fa fa-plus"></i>
                        </a>

                        <a id="edit_order" class="btn btn-default" onclick="edit()">
                          修改 <i class="fa fa-edit"></i>
                        </a>

                        <a id="del_order" class="btn btn-default" onclick="del()">
                          删除 <i class="fa fa-trash-o"></i>
                        </a>
                        <div class="btn-group">
                          <a type="button" class="btn btn-default" onclick="enable()"> 启用 <i class="fa fa-check-circle-o" ></i></a>
                          <a type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><i class="fa fa-angle-down"></i></a>
                          <ul class="dropdown-menu" role="menu">
                            <li>
                              <a onclick="disable()">
                                禁用 <i class="fa fa-ban" ></i></a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <table class="table table-striped table-bordered table-hover" id="bd-goods-type-table">
                  <thead>
                  <tr>
                    <th class="table-checkbox">
                      <input type="checkbox" class="group-checkable"
                             data-set="#bd-goods-type-table .checkboxes"/>
                    </th>
                    <th name="index">序号</th>
                    <th name="code">商品种类编码</th>
                    <th name="name">商品种类名称</th>
                    <th name="status">状态</th>
                    <th name="memo">备注</th>
                  </tr>
                  </thead>
                  <tbody>

                  </tbody>
                </table>
              </div>
            </div>
            <!-- END EXAMPLE TABLE PORTLET-->
          </div>
        </div>
      </div>
    </div>
    <!-- END CONTENT -->
  </div>

  <div class="modal fade" id="goodsTypeDialog" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="goodsTypeLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="goodsTypeLabel"><i class="fa fa-truck"></i> 商品种类信息</h4>
        </div>
        <div id="goodsTypeDetailPane" class="modal-body">
          <form id="goodsTypeDetailForm" action="bd/bd_goodsType" method="post">
            <input type="hidden" name="id" value="" />
            <div id='edit-method'>
            </div>
            <div class="form-group">
              <label class="control-label">商品种类编码：</label>
              <input type="text" id="code" name="code" maxlength="20" class="form-control" placeholder="请输入商品种类编码" />
            </div>
            <div class="form-group">
              <label class="control-label">商品种类名称：</label>
              <input type="text" name="name" class="form-control" maxlength="50" placeholder="请输入商品种类名称" />
            </div>
            <div class="form-group">
              <label class="control-label ">状态：</label>
              <select id="status" name="status" class="form-control select2me">
                <option value="0">启用</option>
                <option value="1">禁用</option>
              </select>
            </div>
            <div class="form-group">
              <label class="control-label">备注：</label>
              <textarea type="text" id="memo" name="memo" class="form-control" style="max-width:100%;" rows=3 placeholder="" ></textarea>
            </div>
          </form>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary"  onclick="save()">保存</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<form id="goodsTypeDelForm" action="bd/bd_goodsType" method="POST">
  <input type="hidden" name="_method" value="DELETE"/>
  <div id="id-data">

  </div>
</form>

<form id="goodsTypeUpdateStatusForm" action="bd/bd_goodsType/status" method="POST">
  <input type="hidden" name="_method" value="PUT"/>
  <div id="status-id-data">

  </div>
</form>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
  <div class="page-footer-inner">
    © 2015 zhenglizhe, Inc. Licensed under MIT license.
  </div>
  <div class="scroll-to-top">
    <i class="icon-arrow-up"></i>
  </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<%=resourcePath%>static/global/plugins/respond.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/excanvas.min.js" type="text/javascript"></script>
<![endif]-->
<script src="<%=resourcePath%>static/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<%=resourcePath%>static/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/admin/js/validator.js"  type="text/javascript"></script>

<script src="<%=resourcePath%>static/global/plugins/select2/select2.min.js" type="text/javascript" ></script>
<script src="<%=resourcePath%>static/global/plugins/datatables/media/js/jquery.dataTables.min.js" type="text/javascript" ></script>
<script src="<%=resourcePath%>static/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->
<script src="<%=resourcePath%>static/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<%=resourcePath%>static/admin/js/menu/menu.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=resourcePath%>static/admin/js/inbox/inbox_msg.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=resourcePath%>static/admin/js/head/header.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=resourcePath%>static/admin/js/pdk-table.js" type="text/javascript" charset="utf-8"></script>

<script src="<%=resourcePath%>static/admin/js/bd/bd_goods_type.js" type="text/javascript" charset="utf-8"></script>

<script>
  jQuery(document).ready(function () {
    loadInboxMsg();
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    Validator.init();
    initModifyPasswordDialog();
    initGoodsType1();
    initTable();
    setMenuItemActive("${requestScope.funcActiveCode}");

    $("#status").select2({minimumResultsForSearch: -1});
  });



</script>
<!-- END JAVASCRIPTS -->
</body>

<!-- END BODY -->
</html>

