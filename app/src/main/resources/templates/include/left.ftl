<div id="leftside" style="width: 25%">
    <div id="sidebar_s">
        <div class="collapse">
            <div class="toggleCollapse">
                <div></div>
            </div>
        </div>
    </div>
    <div id="sidebar">
        <div class="toggleCollapse"><h2>主菜单</h2>
            <div>收缩</div>
        </div>

        <div class="accordion" fillSpace="sidebar">
            <div class="accordionHeader">
                <h2><span>Folder</span>教学管理平台</h2>
            </div>
            <div class="accordionContent">
                <#if leftmenu??>
                <#list leftmenu as level1>
                <ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >${level1.getTitle()}</a>
                    <#if !level1.hasSubmenus()>

                        <#assign level2menus = level1.getSubmenus()/>
                        <#list level2menus as level2>
                        <ul>
                            <li>
                                <a href="javascript:void(0)" >${level2.getTitle()}</a>
                                <#if !level2.hasSubmenus()>
                                    <ul>
                                    <#assign level3menus = level2.getSubmenus()/>
                                    <#list level3menus as level3>

                                       <li><a href="javascript:void(0)" >${level3.getTitle()}</a>
                                        <ul>
                                        <#assign level4menus = level3.getSubmenus()/>
                                        <#list level4menus as level4>
                                            <#--<li><a href="${ctx}/courseWare/config" target="navTab" rel="${level4.getTitle()}">${level4.getTitle()}</a></li>-->
                                            <li><a href="${ctx}<#if level4.getUrl()??>${level4.getUrl()}</#if>?id=<#if level4.getId()??>${level4.getId()}</#if>" target="navTab" rel="${level4.getTitle()}">${level4.getTitle()}</a></li>
                                        </#list>
                                        </ul>
                                       </li>
                                    </#list>
                                    </ul>
                                </#if>
                            </li>
                        </ul>
                        </#list>

                    </#if>
                </ul>
                </#list>

                </#if>
                <#--<ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >教学课件</a>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">精选课件</a>
                                <ul>
                                    <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">必修一</a></li>
                                    <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">必修二</a></li>
                                    <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">化学反应原理</a></li>
                                    <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">有机化合物</a></li>
                                    <li><a href="${ctx}/courseWare/config" target="navTab" rel="精选课件">实验化学</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="我的课件">我的课件</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >教学互动</a>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="课件列表">课件列表</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >素材资源</a>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="教学素材">教学素材</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="我的资源">我的资源</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="学科期刊">学科期刊</a></li>
                        </ul>

                    </li>
                </ul>
                <ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >试题集锦</a>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="学考高考">学考高考</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="本校试题">本校试题</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/question/config" target="navTab" rel="精选试题库">精选试题库</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="拓展试题">拓展试题</a></li>
                        </ul>
                        <ul>
                            <li><a href="${ctx}/question/prepareAdd" target="navTab" rel="题目录入">题目录入</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="tree treeFolder">
                    <li><a href="javascript:void(0)" >优秀课例</a>
                        <ul>
                            <li><a href="${ctx}/courseWare/config" target="navTab" rel="课件列表">课件列表</a></li>
                        </ul>
                    </li>
                </ul>-->
            </div>
        </div>
    </div>
</div>
