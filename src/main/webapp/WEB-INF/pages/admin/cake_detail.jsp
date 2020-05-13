<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 2020/4/24
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@include file="top.jsp"%>
<section id="content_wrapper">
    <section id="content" class="table-layout animated fadeIn">
        <div class="tray tray-center">
            <div class="content-header">
                <h2> 商品信息</h2>
            </div>
            <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                <div class="panel heading-border">
                        <div class="panel-body bg-light">
                            <div class="section row">
                                <div class="col-md-1" style="margin-top: 10px;"><b>名称</b></div>
                                <div class="col-md-5">${cake.title}</div>
                                <div class="col-md-1" style="margin-top: 10px;"><b>状态</b></div>
                                <div class="col-md-3" style="margin-top: 10px;">${cake.status}</div>
                            </div>
                            <div class="section row">
                                <div class="col-md-1" style="margin-top: 10px;"><b>图片</b></div>
                                <div class="col-md-1" id="showImage">
                                    <img src="${pageContext.request.contextPath}/download/images/${cake.image_path}" style="height: 300px;width: 250px;">
                                </div>
                                <div class="col-md-7"></div>
                            </div>
                            <div class="section row">
                                <div class="col-md-1" style="margin-top: 10px;"><b>所属分类</b></div>
                                <div class="col-md-2">${cake.catalog.title}</div>
                                <div class="col-md-1" style="margin-top: 10px;"><b>口味</b></div>
                                <div class="col-md-2">${cake.taste}</div>
                                <div class="col-md-1" style="margin-top: 10px;"><b>甜度</b></div>
                                <div class="col-md-2">${cake.sweetness}</div>
                            </div>
                            <div class="section row">
                                <div class="col-md-1" style="margin-top: 10px;"><b>价格</b></div>
                                <div class="col-md-2">${cake.price}</div>
                                <div class="col-md-1" style="margin-top: 10px;"><b>重量</b></div>
                                <div class="col-md-2">${cake.weight}</div>
                                <div class="col-md-1" style="margin-top: 10px;"><b>尺寸</b></div>
                                <div class="col-md-2">${cake.size}</div>
                            </div>
                            <div class="section row">
                                <div class="col-md-1" style="margin-top: 10px;"><b>材料</b></div>
                                <div class="col-md-8">${cake.material}</div>
                            </div>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="button" class="button" onclick="javascript:window.location.href='${pageContext.request.contextPath}/admin/Cake/list.do';"> 返回 </button>
                        </div>
                </div>
            </div>
        </div>
    </section>
</section>
<script>
    $("#image").change(function(e) {
        var file = e.target.files[0]
        var img = new Image(), url = img.src = URL.createObjectURL(file)
        img.width=50;
        var $img = $(img)
        img.onload = function() {
            URL.revokeObjectURL(url)
            $('#showImage').empty().append($img)
        }
    })

</script>
<%@include file="bottom.jsp"%>
</html>