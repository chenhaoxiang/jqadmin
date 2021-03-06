<#--<!--#include file="common/header.html"&ndash;&gt;-->
<#include "common/header.ftl"/>
<body>
    <div class="container-fluid larry-wrapper">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <!--头部搜索-->
                <section class="panel panel-padding">
                    <form class="layui-form" data-params='{"dataName":"admin","action":"list"}' action="/data/data.json">
                        <div class="layui-form">
                            <div class="layui-inline">
                                <div class="layui-input-inline">
                                    <input class="layui-input" name="keyword" placeholder="关键字">
                                </div>
                            </div>
                            <div class="layui-inline">
                                <button lay-submit class="layui-btn" lay-filter="search">查找</button>
                            </div>
                        </div>
                    </form>
                </section>

                <!--列表-->
                <section class="panel panel-padding">
                    <div class="group-button">
                        <button class="layui-btn layui-btn-small layui-btn-danger ajax-all" data-params='{"url": "./data/del.json","dataName":"admin","key":"id","action":"del"}'>
                            <i class="iconfont">&#xe626;</i> 删除
                        </button>

                        <button class="layui-btn layui-btn-small layui-btn-normal ajax-all" data-params='{"url": "./data/success.json","data":"switch=1","dataName":"admin","key":"id"}'>
                            <i class="layui-icon">&#x1005;</i> 启用
                        </button>
                        <button class="layui-btn layui-btn-small modal" data-params='{"content":".add-subcat","area":"500px,480px", "title":"添加顶级分类","type":"1","dataName":"admin","key":"id","action":"add"}'>
                            <i class="iconfont">&#xe649;</i> 添加
                        </button>
                    </div>
                    <div class="layui-form">
                        <table id="example" class="layui-table jq-even" data-params='{"dataName":"admin","key":"id"}'>
                            <thead>
                                <tr>
                                    <th width="30"><input type="checkbox" id="checkall" data-name="id" lay-filter="check" lay-skin="primary"></th>
                                    <th width="70"><span class="order" data-params='{"field":"id","sort":"asc"}'> 序号</span></th>
                                    <th>帐号</th>
                                    <th>姓名</th>
                                    <th>手机</th>
                                    <th>邮箱</th>
                                    <th>角色</th>
                                    <th>加入时间</th>
                                    <th width="80">状态</th>
                                    <th width="150">操作</th>
                                </tr>
                            </thead>
                            <tbody id="list"></tbody>
                        </table>
                    </div>

                    <div class="text-right" id="page"></div>
                </section>
            </div>
        </div>
    </div>
    <div class="add-subcat">
        <form id="form1" class="layui-form" data-params='{"dataName":"admin","key":"id","action":"add"}' action="/data/add.json" method="GET">
            <div class="layui-form-item">
                <label class="layui-form-label">帐号</label>
                <div class="layui-input-block">
                    <input type="text" name="count" required jq-verify="required" jq-error="请输入帐号" placeholder="请输入帐号" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                    <input type="password" name="pwd" placeholder="密码" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码确认</label>
                <div class="layui-input-inline">
                    <input type="password" name="pwd2" placeholder="密码确认" autocomplete="off" class="layui-input ">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">所属角色</label>
                <div class="layui-input-inline">
                    <select name="role">
                        <option value="1">管理员</option>
                        <option value="2">客服</option>
                        <option value="3">运营</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="title" placeholder="姓名" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                    <input type="radio" name="sex" title="男" value="1" checked />
                    <input type="radio" name="sex" title="女" value="0" />
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">手机</label>
                <div class="layui-input-inline">
                    <input type="text" name="tel" placeholder="手机号码" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" placeholder="邮箱" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门</label>
                <div class="layui-input-inline">
                    <input type="text" name="deparment" placeholder="部门" autocomplete="off" class="layui-input ">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">状态</label>
                <div class="layui-input-inline">
                    <input type="radio" name="switch" title="启用" value="1" checked />
                    <input type="radio" name="switch" title="禁用" value="0" />
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" jq-submit jq-filter="submit">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</body>
<script id="list-tpl" type="text/html" data-params='{"url":"./data/data.json","dataName":"admin","key":"id","pageid":"#page"}'>

    {{# layui.each(d.list, function(index, item){ }}
    <tr>
        <td><input type="checkbox" name="id" value="{{ item.id}}" lay-skin="primary"></td>
        <td>{{ item.id}}</td>
        <td>{{ item.title}}</td>
        <td>张三</td>
        <td>1569564872</td>
        <td>a@163.com</td>
        <td>管理员</td>
        <td>2017-02-24</td>
        <td><input type="checkbox" name="switch" lay-skin="switch" lay-text="启用|禁用" value="1" {{#if (item.switch){ }}checked="checked" {{# } }} lay-filter="ajax" data-params='{"url":"./data/success.json","data":"id={{ item.id}}"}'> </td>
        <td>
            <button class="layui-btn layui-btn-mini modal" data-params='{"content": ".add-subcat","area":"500px,480px","title":"编辑{{ item.title}}管理员","data":"id={{item.id}}","type":"1","action":"edit","bind":true}'>
                        <i class="iconfont">&#xe653;</i>编辑
                    </button>
            <button class="layui-btn layui-btn-mini layui-btn-danger ajax" data-params='{"url": "./data/del.json","data":"id={{item.id}}","action":"del"}'>
                        <i class="iconfont">&#xe626;</i>删除
                    </button></td>
        </td>
    </tr>
    {{# }); }}
</script>
<script src="/js/layui/layui.js"></script>
<#--<!--#include file="common/version.html"&ndash;&gt;-->
<#include "common/version.ftl"/>
<script>
    layui.use('list');
</script>

</html>