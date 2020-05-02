<%--
  Created by IntelliJ IDEA.
  User: susu
  Date: 2020/4/24
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用 IMOOC Cake 后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/css/admin-forms.css">
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
                            <img src="/images/head.jpg" class="img-responsive">
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
                    <a href="/admin/Catalog/list.do">
                        <span class="glyphicon glyphicon-book"></span>
                        <span class="sidebar-title">分类列表</span>
                    </a>
                </li>
                <li>
                    <a href="/admin/Catalog/toAdd.do">
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
                    <h2> 蛋糕管理</h2>
                    <p class="lead"></p>
                </div>
                <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
                    <div class="panel  heading-border">
                        <div class="panel-menu">
                            <div class="row">
                                <div class="hidden-xs hidden-sm col-md-3">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-trash"></i>
                                        </button>
                                        <button type="button" class="btn btn-default light">
                                            <i class="fa fa-plus" onclick="javascript:window.location.href='/admin/Catalog/toAdd.do';"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-9 text-right">
                                    <form action="cake_list.html" method="post">
                                        共35条 1/2
                                        <div class="btn-group">
                                            <button type="submit" name="pageNum" value="0" class="btn btn-default light">
                                                <i class="fa fa-chevron-left"></i>
                                            </button>
                                            <button type="submit" name="pageNum" value="2" class="btn btn-default light">
                                                <i class="fa fa-chevron-right"></i>
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body pn">
                            <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                                <thead>
                                <tr class="">
                                    <th class="text-center hidden-xs">Select</th>
                                    <th class="hidden-xs">名称</th>
                                    <th class="hidden-xs">类型</th>
                                    <th class="hidden-xs">价格</th>
                                    <th class="hidden-xs">口味</th>
                                    <th class="hidden-xs">尺寸</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>深艾尔</td>
                                    <td>复古</td>
                                    <td>268.0</td>
                                    <td>奶油</td>
                                    <td>1</td>
                                    <td>
                                        <a href="cake_info.html?id=200">查看</a>
                                        <a href="cake_add.html?id=200">编辑</a>
                                        <a href="cake_list.html?id=200">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>爱尔兰咖啡</td>
                                    <td>复古</td>
                                    <td>268.0</td>
                                    <td>布丁</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=199">查看</a>
                                        <a href="cake_add.html?id=199">编辑</a>
                                        <a href="cake_list.html?id=199">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>桂圆冰淇淋</td>
                                    <td>复古</td>
                                    <td>198.0</td>
                                    <td>巧克力</td>
                                    <td>1</td>
                                    <td>
                                        <a href="cake_info.html?id=198">查看</a>
                                        <a href="cake_add.html?id=198">编辑</a>
                                        <a href="cake_list.html?id=198">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=141">查看</a>
                                        <a href="cake_add.html?id=141">编辑</a>
                                        <a href="cake_list.html?id=141">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=140">查看</a>
                                        <a href="cake_add.html?id=140">编辑</a>
                                        <a href="cake_list.html?id=140">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=139">查看</a>
                                        <a href="cake_add.html?id=139">编辑</a>
                                        <a href="cake_list.html?id=139">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=138">查看</a>
                                        <a href="cake_add.html?id=138">编辑</a>
                                        <a href="cake_list.html?id=138">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=137">查看</a>
                                        <a href="cake_add.html?id=137">编辑</a>
                                        <a href="cake_list.html?id=137">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=136">查看</a>
                                        <a href="cake_add.html?id=136">编辑</a>
                                        <a href="cake_list.html?id=136">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=135">查看</a>
                                        <a href="cake_add.html?id=135">编辑</a>
                                        <a href="cake_list.html?id=135">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=134">查看</a>
                                        <a href="cake_add.html?id=134">编辑</a>
                                        <a href="cake_list.html?id=134">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=133">查看</a>
                                        <a href="cake_add.html?id=133">编辑</a>
                                        <a href="cake_list.html?id=133">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=132">查看</a>
                                        <a href="cake_add.html?id=132">编辑</a>
                                        <a href="cake_list.html?id=132">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=131">查看</a>
                                        <a href="cake_add.html?id=131">编辑</a>
                                        <a href="cake_list.html?id=131">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=130">查看</a>
                                        <a href="cake_add.html?id=130">编辑</a>
                                        <a href="cake_list.html?id=130">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=129">查看</a>
                                        <a href="cake_add.html?id=129">编辑</a>
                                        <a href="cake_list.html?id=129">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=128">查看</a>
                                        <a href="cake_add.html?id=128">编辑</a>
                                        <a href="cake_list.html?id=128">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=127">查看</a>
                                        <a href="cake_add.html?id=127">编辑</a>
                                        <a href="cake_list.html?id=127">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>浓情巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>广告</td>
                                    <td>4</td>
                                    <td>
                                        <a href="cake_info.html?id=126">查看</a>
                                        <a href="cake_add.html?id=126">编辑</a>
                                        <a href="cake_list.html?id=126">删除</a>
                                    </td>
                                </tr>

                                <tr class="message-unread">
                                    <td class="hidden-xs">
                                        <label class="option block mn">
                                            <input type="checkbox" name="mobileos" value="FR">
                                            <span class="checkbox mn"></span>
                                        </label>
                                    </td>
                                    <td>奶香巧克力</td>
                                    <td>复古</td>
                                    <td>298.0</td>
                                    <td>巧克力</td>
                                    <td>2</td>
                                    <td>
                                        <a href="cake_info.html?id=125">查看</a>
                                        <a href="cake_add.html?id=125">编辑</a>
                                        <a href="cake_list.html?id=125">删除</a>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
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
<script src="/js/jquery.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<!-- Theme Javascript -->
<script src="/js/utility.js"></script>
<script src="/js/demo/demo.js"></script>
<script src="/js/main.js"></script>
<script src="/js/pages.js"></script>
<!-- END: PAGE SCRIPTS -->
</body>


</html>

