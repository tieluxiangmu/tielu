{%extends file="common/page/layout.tpl"%} 
{%block name="navcontent"%}
{%widget name="cadrerealistic:widget/cadrerealisticnav/cadrerealisticnav.tpl"%}
{%/block%}
{%block name="content"%}
{%widget name="cadrerealistic:widget/addsaferisk/addsaferisk.tpl"%}
{%require name='cadrerealistic:page/addsaferisk.tpl'%}{%/block%}