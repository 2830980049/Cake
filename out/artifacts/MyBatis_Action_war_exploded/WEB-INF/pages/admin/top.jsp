<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>欢迎使用 IMOOC Cake 后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin-forms.css">

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

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
                <H3>Cake 后台管理系统</H3>
            </a>
            <span id="toggle_sidemenu_l" class="glyphicon glyphicon-align-justify"></span>
        </div>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="${pageContext.request.contextPath}/images/head.jpg" class="img-responsive">
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
                    <span class="glyphicon glyphicon-log-out"></span>
                </a>
            </div>
        </div>
    </aside>