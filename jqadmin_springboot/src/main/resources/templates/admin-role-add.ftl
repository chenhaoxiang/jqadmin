<#--<!--#include file="common/header.html"&ndash;&gt;-->
<#include "common/header.ftl"/>
<body>
    <div class="container-fluid larry-wrapper">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <section class="panel panel-padding">
                    <form id="form1" class="layui-form" data-params='{"dataName":"role","key":"id","action":"add"}' action="/data/add.json">
                        <div class="layui-form-item ">
                            <div class="layui-form-item">
                                <label class="layui-form-label">角色名称</label>
                                <div class="layui-input-block">
                                    <input type="text" name="name" jq-verify="required" jq-error="请输入标题" placeholder="请输入标题" autocomplete="off" class="layui-input ">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">描述</label>
                                <div class="layui-input-block">
                                    <input type="text" name="desc" placeholder="对角的描述" autocomplete="off" class="layui-input ">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">状态</label>
                                <div class="layui-input-inline">
                                    <input type="radio" name="status" title="是" value="1" checked />
                                    <input type="radio" name="status" title="否" value="0" />
                                </div>
                            </div>

                            <div class="layui-form-item permission-list">
                                <label class="layui-form-label">拥有权限</label>
                                <div class="layui-input-block role-box" id="list"></div>
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
<#--<!--#include file="tpl/permission.html"&ndash;&gt;-->
<#include "tpl/permission.ftl"/>
<script src="/js/layui/layui.js"></script>
<#--<!--#include file="common/version.html"&ndash;&gt;-->
<#include "common/version.ftl"/>
<script>
    layui.use('role');
</script>

</html>