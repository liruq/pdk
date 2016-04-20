<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  String resourcePath = request.getServletContext().getInitParameter("resource_path") + "/";
%>
<div class="page-header navbar navbar-fixed-top">
  <!-- BEGIN HEADER INNER -->
  <div class="page-header-inner">
    <!-- BEGIN LOGO -->
    <div class="page-logo">
      <a href="">
        <img src="<%=resourcePath%>static/img/icon.png" alt="logo" class="logo-default"/>
      </a>

      <div class="menu-toggler sidebar-toggler">
        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
      </div>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
    <a href="javascript:void(0)" class="menu-toggler responsive-toggler" data-toggle="collapse"
       data-target=".navbar-collapse">
    </a>
    <!-- END RESPONSIVE MENU TOGGLER -->

    <!-- BEGIN PAGE TOP -->
    <div class="page-top">

      <div class="top-menu">
        <ul class="nav navbar-nav pull-right">
          <li class="separator hide">
          </li>
          <li class="separator hide">
          </li>
          <!-- BEGIN INBOX DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->

          <!-- END INBOX DROPDOWN -->
          <li class="separator hide">
          </li>
          <!-- BEGIN USER LOGIN DROPDOWN -->
          <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
          <li class="dropdown dropdown-user dropdown-dark">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"
               data-close-others="true">
						<span class="username username-hide-on-mobile">
						${user.name} </span>
              <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
              <c:choose>
                <c:when test="${user.headerImg == null}">
                   <img alt="" id="img-circle" class="img-circle" src="<%=resourcePath%>static/img/user-default-header.png"/>
                </c:when>
                <c:when test="${user.headerImg==''}">
                  <img alt="" id="img-circle" class="img-circle" src="<%=resourcePath%>static/img/user-default-header.png"/>
                </c:when>
                <c:otherwise>
                    <img alt="" id="img-circle" class="img-circle" src="<%=resourcePath%>${user.headerImg}"/>
                </c:otherwise>
              </c:choose>

            </a>
            <ul class="dropdown-menu dropdown-menu-default">
              <li>
                <a href="sm/sm_employee_detail/${user.id}?funcActiveCode=USER&canEdit=true" >
                  <i class="icon-settings"></i> 设置 </a>
              </li>
              <li>
                <a data-toggle="modal" data-target="#modifyPasswordDialog">
                  <i class="icon-lock"></i> 修改密码 </a>
              </li>
              <li>
                <a href="logout">
                  <i class="icon-key"></i> 注销 </a>
              </li>
            </ul>
          </li>
          <!-- END USER LOGIN DROPDOWN -->
        </ul>
      </div>
      <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END PAGE TOP -->
  </div>
  <!-- END HEADER INNER -->
</div>

<div class="modal fade" id="modifyPasswordDialog" data-backdrop="static" tabindex="-1" role="dialog"
     aria-labelledby="modifyPasswordLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modifyPasswordLabel"><i class="fa fa-lock"></i> 修改密码</h4>
      </div>
      <div id="modifyPasswordPane" class="modal-body">
        <form id="modifyPasswordForm" action="sm/password/edit" method="post">
          <div class="form-group">
            <label class="control-label">当前密码：</label>
            <input type="password" name="password" class="form-control" placeholder=""/>
          </div>
          <div class="form-group">
            <label class="control-label">新密码：</label>
            <input type="password" name="newPassword" class="form-control" placeholder=""/>
          </div>
          <div class="form-group">
            <label class="control-label">确认新密码：</label>
            <input type="password" name="confirmPassword" class="form-control" placeholder=""/>
          </div>
        </form>
        <div class="modal-footer">
          <button id="modifyPasswordBtn" type="button" class="btn btn-primary" data-loading-text="保存中...">保存</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="clearfix">
</div>
