<#--<!--#include file="common/header.html"&ndash;&gt;-->
<#include "common/header.ftl"/>
<body>
    <div class="container-fluid larry-wrapper">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <section class="panel panel-padding">
                    <form id="form1" class="layui-form" data-params='{"dataName":"admin","action":"nodo"}' action="/data/success.json">
                        <div class="layui-form-item">
                            <label class="layui-form-label">帐号</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" required jq-verify="required" jq-error="请输入帐号" placeholder="请输入帐号" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" name="pwd" placeholder="密码" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">密码确认</label>
                            <div class="layui-input-block">
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
                            <div class="layui-input-block">
                                <input type="text" name="title" placeholder="姓名" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">性别</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="sex" title="男" value="1" checked />
                                <input type="radio" name="sex" title="女" value="0" />
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">手机</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" placeholder="手机号码" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" placeholder="邮箱" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">部门</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" placeholder="部门" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">状态</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="status" title="启用" value="1" checked />
                                <input type="radio" name="status" title="禁用" value="0" />
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" jq-submit jq-filter="submit">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>
</script>
<script src="js/layui/layui.js"></script>
<#--<!--#include file="common/version.html"&ndash;&gt;-->
<#include "common/version.ftl"/>
<script>
    layui.use('simpleform');
</script>

</html>