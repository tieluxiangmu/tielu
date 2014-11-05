{%extends file="common/page/layout.tpl"%} 
{%block name="navcontent"%}
{%widget name="index:widget/indexnav/indexnav.tpl"%}
{%/block%}
{%block name="content"%}
{%widget name="index:widget/mainmenu/mainmenu.tpl"%}
{%require name='cadrerealistic:page/index.tpl'%}{%/block%}
{%script%}
	//require("index:widget/main/main.js").init();
{%/script%}
