<div class="pageContent">
    <form method="post" enctype="multipart/form-data" action="${ctx}/courseWare/save" class="pageForm required-validate" onsubmit="return iframeCallback(this, navTabAjaxDone);" >
        <div class="pageFormContent" layoutH="60">
            <fieldset>
                <legend>添加课件</legend>
                <dl class="nowrap">
                    <dt>上传课件：</dt>
                    <dd>
                    <input id="addFile" type="button" value="添加文件">
                    <div id="fileDiv">
                        <input type="file" name="file"/>
                    </div>
                    </dd>
                </dl>

            </fieldset>
            <div id="editor">

            </div>
        </div>
        <div class="formBar">
            <ul>
                <li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
                <li>
                    <div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
                </li>
            </ul>
        </div>
    </form>
</div>

<script type="text/javascript">

    var E = window.wangEditor;
    var editor = new E('#editor');
    // 或者 var editor = new E( document.getElementById('#editor') )
    editor.customConfig.uploadImgShowBase64 = true;
    //editor.customConfig.uploadImgServer = '/upload';
    // 隐藏“网络图片”tab
    //editor.customConfig.showLinkImg = false;

    editor.create();

    $(function () {
        $("#addFile").click(function () {
            $("#fileDiv").append("<input type='file' name='file'/>");
        })

    });
</script>
