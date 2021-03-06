<#--<!--#include file="common/header.html"&ndash;&gt;-->
<#include "common/header.ftl"/>
<body>
    <div class="container-fluid larry-wrapper">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <section class="panel panel-padding">
                    <form id="form1" class="layui-form " data-params='{"dataName":"article","key":"id","action":"add"}' action="/data/add.json" method="get">
                        <div class="layui-form-item">
                            <label class="layui-form-label">文章标题</label>
                            <div class="layui-input-block">
                                <input type="text" name="title" jq-verify="required" jq-error="请输入标题|请输入数字" placeholder="请输入标题" autocomplete="off" class="layui-input ">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">关键字</label>
                            <div class="layui-input-block">
                                <input type="text" name="keword" jq-verify="required" placeholder="请输入关键字，多个请用英文逗号隔开" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item ">
                            <label class="layui-form-label">描述</label>
                            <div class="layui-input-block">
                                <textarea name="desc" placeholder="请输入描述" class="layui-textarea"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">所属分类</label>
                            <div class="layui-input-inline">
                                <select name="city" jq-verify="required" jq-error="请输入分类" lay-filter="verify">
                                    <option value=""></option>
                                    <option value="0">北京</option>
                                    <option value="1">上海</option>
                                    <option value="2">广州</option>
                                    <option value="3">深圳</option>
                                    <option value="4">杭州</option>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item ">
                            <label class="layui-form-label">作者</label>
                            <div class="layui-input-inline">
                                <input type="text" name="author" placeholder="请输入作者" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item ">
                            <label class="layui-form-label">来源</label>
                            <div class="layui-input-block">
                                <input type="text" name="form" placeholder="请输入文章来源" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">推荐</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="command" title="是" value="1" checked />
                                <input type="radio" name="command" title="否" value="0" />
                            </div>
                        </div>

                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">置顶</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="top" title="是" value="1" checked />
                                <input type="radio" name="top" title="否" value="0" />
                            </div>
                        </div>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">审核</label>
                            <div class="layui-input-inline">
                                <input type="radio" name="status" title="是" value="1" checked />
                                <input type="radio" name="status" title="否" value="0" />
                            </div>
                        </div>


                        <div class="layui-form-item">
                            <label class="layui-form-label">tag标签</label>
                            <div class="layui-input-block">
                                <div class="tag" data-id="1">
                                    <p class="text">Jquery</p>
                                    <p class="tick-box">
                                        <span class="tick-bg"></span>
                                        <i class="iconfont tick">&#xe6a1;</i>
                                    </p>
                                </div>

                                <div class="tag" data-id="1">
                                    <p class="text">哈哈</p>
                                    <p class="tick-box">
                                        <span class="tick-bg"></span>
                                        <i class="iconfont tick">&#xe6a1;</i>
                                    </p>
                                </div>

                                <div class="tag-defined">自定义标签</div>
                                <input type="hidden" name="tags" value="" data-count="5">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">上传图片</label>
                            <div class="layui-input-block">
                                <input type="file" name="file" class="layui-upload-file">
                                <input type="hidden" name="img" jq-error="请上传图片" error-id="img-error">
                                <p id="img-error" class="error"></p>
                            </div>

                        </div>

                        <div class="layui-form-item layui-form-text">
                            <label class="layui-form-label">内容</label>
                            <div class="layui-input-block">
                                <script id="content" name="content" type="text/plain"></script>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button class="layui-btn" jq-submit lay-filter="submit">立即提交</button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="/js/layui/layui.js"></script>
<script src="/js/common.js"></script>
<script src="/js/lib/ueditor/ueditor.config.js"></script>
<script src="/js/lib/ueditor/ueditor.all.min.js"></script>
<#--<!--#include file="common/version.html"&ndash;&gt;-->
<#include "common/version.ftl"/>
<script>
    var $, JQquery;
    layui.use('myform');
    var ue = UE.getEditor('content');
</script>

</html>