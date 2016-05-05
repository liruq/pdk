<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>cbstool</title>
    <link type="text/css" rel="stylesheet" href="../../static/global/css/style.css"/>
    <script type="text/javascript" src="../../static/global/scripts/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="../../static/global/scripts/menu.js"></script>
    <script type="text/javascript" src="../../static/global/scripts/bootstrap.min.js"></script>
    <link type="text/javascript" src="" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/global/css/hg.css"/>
    <link type="text/css" rel="stylesheet" href="../../static/global/css/bootstrap.min.css"/>

    <script type="text/javascript" src="/static/global/scripts/jquery.form.js"></script>
    <script type="text/javascript" src="/static/global/scripts/jsonUtils.js"></script>
</head>

<body>
退货订单登记
<div class="container-fluid"
     style="height:100%;  width:90%;float: left;margin-left: 30px; margin-top: 20px; overflow: scroll">
    <div class="row-fluid">
        <div class="span12">
            <div class="tabbable" id="tabs-669559">
                <div class="tab-content">
                    <div class="tab-pane  active" id="panel-1">
                        <form method="post"  id="submitOrder">
                            <br>
                            <div class="inputGroup inputGroupDiv inputGroupDivFirst">
                                <span class="inputGroupSpan">商品名称</span>
                                <div class="oneLineDiv inputGroup inputGroupBackColor">
                                    <input type="text" class="inputGroupInput" value=""
                                           name="productName">
                                </div>
                            </div>
                            <div class="inputGroup inputGroupDiv">
                                <span class="inputGroupSpan">退货数量</span>
                                <div class="oneLineDiv inputGroup inputGroupBackColor">
                                    <input type="text" class="inputGroupInput" value=""
                                           name="count">
                                </div>
                            </div>
                            <div class="inputGroup inputGroupDiv">
                                <span class="inputGroupSpan">退货价格</span>
                                <div class="oneLineDiv inputGroup inputGroupBackColor">
                                    <input type="text" class="inputGroupInput" value=""
                                           name="price">
                                </div>
                            </div>
                            <div class="inputGroup inputGroupDiv">
                                <span class="inputGroupSpan">客户ID</span>
                                <div class="oneLineDiv inputGroup inputGroupBackColor">
                                    <input type="text" class="inputGroupInput" value=""
                                           name="comsumerId">
                                </div>
                            </div>
                            <div class="inputGroup inputGroupDiv">
                                <span class="inputGroupSpan">经手人</span>
                                <div class="oneLineDiv inputGroup inputGroupBackColor">
                                    <input type="text" class="inputGroupInput" value=""
                                           name="brokerage">
                                </div>
                            </div>
                        </form>
                        <br>
                        <button type="submit" class="btn btn-success" style=" margin-left: 10px;margin-top:10px;" onclick="submitOrder();">提交</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
<script>
    function submitOrder() {
        var form = $("#submitOrder");
        var options = {
            url: "/reOrder/add",
            type: 'post',
            success: function (data) {
                if(data=='fail') {
                    alert('还不存在该商品，退货失败');
                }else{alert("登记成功");}
            }
        }
        form.ajaxSubmit(options);
    }
</script>
</body>
</html>

