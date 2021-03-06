<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>jQadmin后台模板</title>
    <meta name="description" content="一款由JQ酷为了省时间而打造的后台管理模板，封装了常用的JS方法，使得你可以写更少甚至不写js代码就可以完成整个后台的搭建。模板使用了layui，模块化开发，本套模板是按着本人这些年来的习惯编写，也为方便以后搭建项目的便捷而编写" />
    <meta name="keywords" content="jqadmin,后台模板,layui后台模板" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="/css/font/iconfont.css?v=1.0.0" media="all">
    <link rel="stylesheet" type="text/css" href="/css/layui.css?v=1.0.9" media="all">
    <link rel="stylesheet" type="text/css" href="/css/jqadmin.css?v=2.0.0" media="all">
</head>

<body>
    <ul class='right-click-menu'>
        <li><a href='javascript:;' data-event='fresh'>刷新</a></li>
        <li><a href='javascript:;' data-event='close'>关闭</a></li>
        <li><a href='javascript:;' data-event='other'>关闭其它</a></li>
        <li><a href='javascript:;' data-event='all'>全部关闭</a></li>
    </ul>
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <!-- logo区域 -->
            <div class="jqadmin-logo-box">
                <a class="logo" href="http://jqadmin.jqcool.net" title="jQAdmin">
                    <h1>jQadmin</h1>
                </a>
                <div class="menu-type"><i class="iconfont">&#xe61a;</i></div>
            </div>

            <!-- 主菜单区域 -->
            <div class="jqadmin-main-menu">
                <ul class="layui-nav clearfix" id="menu" lay-filter="main-menu">

                </ul>

            </div>

            <!-- 头部右侧导航 -->
            <div class="header-right">
                <ul class="layui-nav jqadmin-header-item right-menu">
                    <li class="layui-nav-item first">
                        <a href="javascript:;">
                            <cite> admin</cite>
                            <span class="layui-nav-more"></span>
                        </a>

                        <dl class="layui-nav-child">
                            <dd class="tab-menu">
                                <a href="javascript:;" data-url="/user-info" data-title="个人信息"> <i class="iconfont " data-icon='&#xe672;'>&#xe672; </i><span>个人信息</span></a>
                            </dd>
                            <dd>
                                <a href=""><i class="iconfont ">&#xe64b; </i>退出</a>
                            </dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item tab-menu"><a class="msg" href="javascript:;" data-url="/msg" data-title="站内信息"><i class="iconfont" data-icon='&#xe63c;'>&#xe63c; </i><span class="msg-num">1</span></a></li>
                </ul>
                <button title="刷新" class="layui-btn layui-btn-normal fresh-btn"><i class="iconfont">&#xe62e; </i> </button>
            </div>
        </div>

        <!-- 左侧导航-->
        <div class="layui-side layui-bg-black jqamdin-left-bar">
            <div class="layui-side-scroll">
                <!--子菜单项-->

                <div id="submenu"></div>
            </div>
        </div>

        <!-- 左侧侧边导航结束 -->
        <!-- 右侧主体内容 -->
        <div class="layui-body jqadmin-body">

            <div class="layui-tab layui-tab-card jqadmin-tab-box" id="jqadmin-tab" lay-filter="tabmenu" lay-notAuto="true">
                <ul class="layui-tab-title">
                    <li class="layui-this" id="admin-home" lay-id="0" fresh=1><i class="iconfont">&#xe622;</i><em>后台首页</em></li>

                </ul>
                <div class="menu-btn" title="显示左则菜单">
                    <i class="iconfont">&#xe616;</i>
                </div>
                <div class="tab-move-btn">
                    <span>更多<i class="iconfont">&#xe604;</i></span>

                    <!--<span class="move-left-btn"><i class="iconfont">&#xe616;</i></span>
                    <span class="move-right-btn"><i class="iconfont ">&#xe618;</i></span>-->
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe class="jqadmin-iframe" data-id='0' src="/welcome"></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- 底部区域 -->
        <div class="layui-footer jqadmin-foot">
            <div class="layui-mian">
                <p class="jqadmin-copyright">
                    <span class="layui">2017 &copy;</span> Write by Paco,<a href="http://www.jqcool.net">jQAdmin</a>. 版权所有 <span class="layui">依赖前端框架layui</span>
                    <button type="button" class="layui-btn  layui-btn-small my-tips"> <i class="iconfont">&#xe63b;</i> 打赏作者</button>
                </p>
            </div>
        </div>
    </div>
    <div class="my-tip">
        <img src="/images/20170724234211.jpg" alt="" />
    </div>
    <ul class="menu-list" id="menu-list"></ul>
</body>
<#--<!--#include file="tpl/menu.html"&ndash;&gt;-->
<#include "tpl/menu.ftl"/>
<#--<!--#include file="tpl/menu-list.html"&ndash;&gt;-->
<#include "tpl/menu-list.ftl"/>
<script type="text/javascript" src="/js/layui/layui.js"></script>
<#--<!--#include file="common/version.html"&ndash;&gt;-->
<#include "common/version.ftl"/>
<script>
    var global = {};
    layui.use('index');
</script>

</html>