<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
{%* 使用html插件替换普通html标签，同时注册JS组件化库 *%}
{%html framework="common:static/js/libs/mod.js"  xmlns="http://www.w3.org/1999/xhtml"%}
    {%* 使用head插件替换head标签，主要为控制加载同步静态资源使用 *%}
	{%head%}
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    	<title>重庆车务段安全管理信息系统</title>
    	 <!--[if lt IE 9]>
       	 <script src="/static/js/html5.js"></script>
   	 <![endif]-->
    	{%block name="block_head_static"%}{%/block%}
	{%require name="common:static/css/reset.css"%}
	{%require name="common:static/css/style.css"%}
	{%require name="common:static/css/invalid.css"%}
	{%require name="common:static/css/jNotify.jquery.css"%}
	{%require name="common:static/css/chosen.css"%}
	{%require name="common:static/css/zTreeStyle.css"%}
	{%require name="common:static/css/jquery.autocomplete.css"%}
	

	<script type="text/javascript">
	window.Request = {
		QueryString : function(item){
		var svalue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)","i"));
			svalue = svalue ? svalue[1] : svalue;
			return svalue || '';

		}
	};
	</script>
	{%/head%}
	{%* 使用body插件替换body标签，主要为可控制加载JS资源 *%}
	{%body id="body-wrapper"%}
		{%require name="common:static/js/common_libs.js"%}
		{%require name="common:static/js/chosen.jquery.js"%}
		{%require name="common:static/js/jquery.validate.js"%}
		{%require name="common:static/js/validate-ex.js"%}
		{%require name="common:static/js/jquery.ztree.all-3.5.js"%}
		{%require name="common:static/js/jquery.autocomplete.js"%}

		<!--livereload-->
		{%block name="main"%}
		<div id="sidebar">
		    <div id="sidebar-wrapper">
		        <a href="#">
		            <img id="pic" src="/web{%$smarty.session.user.photo%}" alt="用户照片" />
		        </a>
		        <div id="profile-links">
		            姓名：
		            <a class="profile-edit" href="javascript:void(0);" data-uid="{%$smarty.session.user.id%}"title="姓名">
		                {%$smarty.session.user.name%}
		            </a>
		            <br />
		            职务：
		            <a href="#messages" rel="modal" title="职务">
		                {%$smarty.session.user.position%}
		            </a>
		            <br />
		            办公电话：
		            <a href="#messages" rel="modal" title="">
		                {%$smarty.session.user.tel%}
		            </a>
		            <br />
		            手机：
		            <a href="#messages" rel="modal" title="">
		                {%$smarty.session.user.mobile%}
		            </a>
		            <br />
		            <div class="spliter">
		            </div>
		            <p>
		                <a href="/web" title="点击进入系统主页">
		                    系统主页
		                </a>
		                |
		                <a href="index.php?r=userinfo/logout" title="退出">
		                    退出
		                </a>
		            </p>
		        </div>
		        <ul id="main-nav">
		            <li>
		                <a  href="javascript:void(0);" data-uid="{%$smarty.session.user.id%}" title="姓名" class="nav-top-item no-submenu profile-edit">
		                    个人信息管理
		                </a>
		            </li>
		            {%block name="navcontent"%}{%/block%}
		        </ul>
		    </div>
		</div>
		<div id="main-content">
			{%block name="content"%}{%/block%}
		</div>
		{%/block%}
		<script type="text/javascript" src="/web/static/libs/My97DatePicker/WdatePicker.js"></script>
		{%script%}
			require('common:widget/weblistener/weblistener.js').init();
			$('.profile-edit').on('click', function() {
				var id = $(this).attr('data-uid');
				$.dialog({
			            title: '编辑',
			            width: '500px',
			            height: '300px',
			            content: 'url:index.php?r=userinfo/update&id='+id
			        }); 
			});
			setTimeout(function(){
				listener.trigger('com.myTest', 'say', '全站通信信使');
			},100);	
		{%/script%}
	{%/body%}
{%/html%}