{%extends file="common/page/layout.tpl"%} 
{%block name="navcontent"%}
{%widget name="index:widget/indexnav/indexnav.tpl"%}
{%/block%}
{%block name="content"%}
{%widget name="index:widget/cadrerealistic/cadrerealistic.tpl"%}
{%require name='index:page/realinvestigation.tpl'%}{%/block%}
