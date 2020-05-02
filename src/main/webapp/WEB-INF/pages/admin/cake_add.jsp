<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 2020/4/24
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用 IMOOC Cake 后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../../css/theme.css">
    <link rel="stylesheet" type="text/css" href="../../../css/admin-forms.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="../index.html">
                <H3>IMOOC Cake 后台管理系统</H3>
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="../../../images/head.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">管理员</div>
                            <div class="media-links">
                                <a href="login.html">退出</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                        <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt20">商品管理</li>
                <li class="active">
                    <a href="cake_list.html">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">商品列表</span>
                    </a>
                </li>
                <li>
                    <a href="cake_add.html">
                        <span class="glyphicon glyphicon-home"></span>
                        <span class="sidebar-title">商品上架</span>
                    </a>
                </li>
                <li class="sidebar-label pt20">分类管理</li>
                <li class="active">
                    <a href="catalog_list.html">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">分类列表</span>
                    </a>
                </li>
                <li>
                    <a href="catalog_add.html">
                        <span class="glyphicon glyphicon-home"></span>
                        <span class="sidebar-title">添加分类</span>
                    </a>
                </li>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="login.html">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">
        <section id="content" class="table-layout animated fadeIn">
            <div class="tray tray-center">
                <div class="content-header">
                    <h2> 上架新商品</h2>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel heading-border">
                        <form method="post" action="cake_list.html" enctype="multipart/form-data" id="admin-form">
                            <div class="panel-body bg-light">
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>名称</b></div>
                                    <div class="col-md-5">
                                        <label for="title" class="field prepend-icon">
                                            <input type="text" name="title" id="title" class="gui-input" placeholder="名称..." required>
                                            <label for="title" class="field-icon">
                                                <i class="fa fa-navicon"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>状态</b></div>
                                    <div class="col-md-3" style="margin-top: 10px;">
                                        <input type="radio" name="status" id="status1" class="radio" value="" checked />
                                        <label for="status1">普通</label>
                                        <input type="radio" name="status" id="status2" class="radio" value="推荐" />
                                        <label for="status2">推荐</label>
                                        <input type="radio" name="status" id="status3" class="radio" value="特卖" />
                                        <label for="status3">特卖</label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>图片</b></div>
                                    <div class="col-md-1" id="showImage"></div>
                                    <div class="col-md-7">
                                        <input type="file" name="image" id="image" class="gui-file" placeholder="图片..." required>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>所属分类</b></div>
                                    <div class="col-md-2">
                                        <label class="field select">
                                            <select id="language" name="cid">

                                                <option value="11000">&nbsp;&nbsp;&nbsp;&nbsp;婚礼</option>

                                                <option value="11100">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;西式</option>

                                                <option value="11101">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;多层</option>

                                                <option value="11102">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;花朵</option>

                                                <option value="11103">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;造型</option>


                                                <option value="11200">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;传统</option>

                                                <option value="11201">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;复古</option>



                                                <option value="12000">&nbsp;&nbsp;&nbsp;&nbsp;生日</option>

                                                <option value="12100">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;儿童</option>

                                                <option value="12101">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男孩</option>

                                                <option value="12102">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女孩</option>

                                                <option value="12103">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;满月</option>


                                                <option value="12200">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;老人</option>

                                                <option value="12201">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿糕</option>


                                                <option value="12300">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;成人</option>

                                                <option value="12301">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;夫妻</option>

                                                <option value="12302">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲戚</option>

                                                <option value="12303">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;朋友</option>



                                                <option value="13000">&nbsp;&nbsp;&nbsp;&nbsp;节日</option>

                                                <option value="13100">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;家庭</option>

                                                <option value="13101">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;母亲节</option>

                                                <option value="13102">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;父亲节</option>

                                                <option value="13103">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;儿童节</option>

                                                <option value="13104">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;情人节</option>


                                                <option value="13200">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;送人</option>

                                                <option value="13201">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;教师节</option>

                                                <option value="13202">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;圣诞节</option>



                                                <option value="14000">&nbsp;&nbsp;&nbsp;&nbsp;专用</option>

                                                <option value="14100">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;聚会</option>

                                                <option value="14101">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商业宴会</option>

                                                <option value="14102">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;同学聚会</option>

                                                <option value="14103">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单身派对</option>


                                                <option value="14200">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;纪念</option>

                                                <option value="14201">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组织庆典</option>

                                                <option value="14202">&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动仪式</option>



                                            </select>
                                            <i class="arrow double"></i>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>口味</b></div>
                                    <div class="col-md-2">
                                        <label for="taste" class="field prepend-icon">
                                            <input type="text" name="taste" id="taste" class="gui-input" placeholder="口味..." required>
                                            <label for="taste" class="field-icon">
                                                <i class="fa fa-coffee"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>甜度</b></div>
                                    <div class="col-md-2">
                                        <label for="sweetness" class="field prepend-icon">
                                            <input type="number" name="sweetness" id="sweetness" class="gui-input" placeholder="甜度..." required min="1" max="5" value="3">
                                            <label for="sweetness" class="field-icon">
                                                <i class="fa fa-star"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>价格</b></div>
                                    <div class="col-md-2">
                                        <label for="price" class="field prepend-icon">
                                            <input type="text" name="price" id="price" class="gui-input" placeholder="价格..." required>
                                            <label for="price" class="field-icon">
                                                <i class="fa fa-cny"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>重量</b></div>
                                    <div class="col-md-2">
                                        <label for="weight" class="field prepend-icon">
                                            <input type="number" name="weight" id="weight" class="gui-input" placeholder="重量..." required>
                                            <label for="weight" class="field-icon">
                                                <i class="fa fa-database"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <div class="col-md-1" style="margin-top: 10px;"><b>尺寸</b></div>
                                    <div class="col-md-2">
                                        <label for="size" class="field prepend-icon">
                                            <input type="number" name="size" id="size" class="gui-input" placeholder="尺寸..." required>
                                            <label for="size" class="field-icon">
                                                <i class="fa fa-arrows"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div class="section row">
                                    <div class="col-md-1" style="margin-top: 10px;"><b>材料</b></div>
                                    <div class="col-md-8">
                                        <label for="material" class="field prepend-icon">
                                            <input type="text" name="material" id="material" class="gui-input" placeholder="材料..." required>
                                            <label for="material" class="field-icon">
                                                <i class="fa fa-server"></i>
                                            </label>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" class="button"> 保存 </button>
                                <button type="button" class="button" onclick="javascript:window.location.href='cake_list.html';"> 返回 </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </section>



</div>
<style>
    /* demo page styles */
    body { min-height: 2300px; }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }
    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body { padding: 18px 12px; }
    }
</style>

<style>
    .ui-datepicker select.ui-datepicker-month,
    .ui-datepicker select.ui-datepicker-year {
        width: 48%;
        margin-top: 0;
        margin-bottom: 0;

        line-height: 25px;
        text-indent: 3px;

        color: #888;
        border-color: #DDD;
        background-color: #FDFDFD;

        -webkit-appearance: none; /*Optionally disable dropdown arrow*/
    }
</style>

<!-- jQuery -->
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery-ui.min.js"></script>
<!-- Theme Javascript -->
<script src="../../../js/utility.js"></script>
<script src="../js/demo/demo.js"></script>
<script src="../../../js/main.js"></script>
<script src="../../../js/pages.js"></script>
<!-- END: PAGE SCRIPTS -->
</body>
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

</html>