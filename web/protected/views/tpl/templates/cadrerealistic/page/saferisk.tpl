{%extends file="common/page/layout.tpl"%} 
{%block name="navcontent"%}
{%widget name="cadrerealistic:widget/cadrerealisticnav/cadrerealisticnav.tpl"%}
{%/block%}
{%block name="content"%}
{%widget name="cadrerealistic:widget/saferisk/saferisk.tpl"%}
{%require name='cadrerealistic:page/saferisk.tpl'%}{%/block%}