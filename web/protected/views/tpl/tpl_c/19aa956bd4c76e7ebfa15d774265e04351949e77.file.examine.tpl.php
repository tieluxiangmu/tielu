<?php /* Smarty version Smarty-3.1.13, created on 2014-11-09 11:28:34
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\cadreexamine\widget\examine\examine.tpl" */ ?>
<?php /*%%SmartyHeaderCode:22943545dbfc149f8e3-97321859%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '19aa956bd4c76e7ebfa15d774265e04351949e77' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\cadreexamine\\widget\\examine\\examine.tpl',
      1 => 1415528462,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '22943545dbfc149f8e3-97321859',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545dbfc14a3768_13365587',
  'variables' => 
  array (
    'i' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545dbfc14a3768_13365587')) {function content_545dbfc14a3768_13365587($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><div class="content-box">
<div class="content-box-header">
<h3>筛选条件</h3>
</div>
<div class="content-box-content">
<form>
<fieldset>
<p>
<span class="spantitle">年份</span>
<select class="chosen-select small-input" id="year-select" style="width:150px">
<option selected="selected" value="">请选择</option>
<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 2014;
  if ($_smarty_tpl->tpl_vars['i']->value<2030){ for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value<2030; $_smarty_tpl->tpl_vars['i']->value++){
?>
<option value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['i']->value);?>
"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['i']->value);?>
</option>
<?php }} ?>
</select>
<span class="spantitle" style="margin-left: 30px;">月份</span>
<select class="chosen-select small-input" id="month-select" style="width:150px">
<option selected="selected" value="">请选择</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>
<span class="spantitle" style="margin-left: 30px;">下属</span>
<select class="chosen-select small-input" id="person-select" style="width:150px">
<option selected="selected" value="">请选择</option>
<option value="余戈">余戈</option>
<option value="蔡泽琪">蔡泽琪</option>
<option value="李洁">李洁</option>
<option value="樊鹏">樊鹏</option>
<option value="刘远平">刘远平</option>
<option value="潘晓明">潘晓明</option>
<option value="刘宁">刘宁</option>
<option value="田兴明">田兴明</option>
<option value="汤献忠">汤献忠</option>
<option value="黄成福">黄成福</option>
</select>
<a class="button btn btn-primary" id="search-btn" style="margin-left:20px">开始查询</a>
</p>
</fieldset>
</form>
</div>
</div>
<form class="result-wrap">
</form>
<a class="button btn btn-success" style="margin-top: 10px;margin-bottom:10px" id="export-excel" href="javascript:;">生成Excel并发送邮件</a>
<table id="examine-result-tpl" cellpadding="0" cellspacing="0" width="1017" style="font-size:12px;display:none">
<colgroup>
<col width="72" style="width:72px"/>
<col width="52" style=";width:52px"/>
<col width="58" style=";width:59px"/>
<col width="61" style=";width:61px"/>
<col width="42" style=";width:43px"/>
<col width="59" span="2" style=";width:59px"/>
<col width="261" style=";width:261px"/>
<col width="239" style=";width:239px"/>
<col width="55" style=";width:55px"/>
<col width="59" style=";width:59px"/>
</colgroup>
<tbody>
<tr height="38" style=";height:38px">
<td rowspan="2" height="76" width="72" style="border-top-style: none;">
量化标准及完成情况</td>
<td colspan="2" width="111" style="border-right-width: 1px; border-right-color: black;">
量化检查标准</td>
<td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
昼查<i class="goal-zhoucha">5</i>次，夜查<i class="goal-yecha">2</i>次，添乘<i class="goal-tiancheng">1</i>遍，检查四五等站<i class="goal-jiacha">3</i>次，发放《安全检查通知书》<i class="goal-tongzhi">4</i>份，发现问题<i class="goal-faxianwenti">8</i>个，查处“两违”<i class="goal-liangwei">3</i>件，抽查重点安全风险<i class="goal-anquan">3</i>个。</td>
</tr>
<tr height="38" style=";height:38px">
<td colspan="2" height="38" width="111" style="border-right-width: 1px; border-right-color: black;">
实际完成情况</td>
<td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
昼查<input type="text" class="real-zhoucha text-input small-input" style = "width: 15px;" >次，                夜查<input type="text" class="real-yecha text-input small-input" style = "width: 15px;">次，                添乘<input type="text" class="real-tiancheng text-input small-input" style="width:15px">遍,                检查四五等站<input type="text" class="real-jiacha text-input small-input" style="width:15px">次，                发放《安全检查通知书》<input type="text" class="real-tongzhi text-input small-input" style="width:15px">份，                发现问题<input type="text" class="real-faxianwenti text-input small-input" style="width:15px">个，                查处“两违”<input type="text" class="real-liangwei text-input small-input" style="width:15px">件，                抽查重点安全风险<input type="text" class="real-anquan text-input small-input" style="width:15px">个。</td>
</tr>
<tr class="list-title" height="48" style="height:48px">
<td rowspan="5" height="342" width="72" style="border-bottom-width: 1px; border-bottom-color: black;">
检查写实情况</td>
<td width="82" style="border-top-style: none;">
日期</td>
<td width="59" style="border-top-style: none; border-left-style: none;">
时间</td>
<td width="61" style="border-top-style: none; border-left-style: none;">
检查人</td>
<td width="43" style="border-top-style: none; border-left-style: none;">
检查方式</td>
<td width="59" style="border-top-style: none; border-left-style: none;">
单位</td>
<td width="59" style="border-top-style: none; border-left-style: none;">
值班&nbsp; 干部</td>
<td width="201" style="border-top-style: none; border-left-style: none;">
发现问题</td>
<td width="239" style="border-top-style: none; border-left-style: none;">
整改情况</td>
<td width="85" style="border-top-style: none; border-left-style: none;">
是否下发检查通知书</td>
<td width="59" style="border-top-style: none; border-left-style: none;">
两违类别/件数</td>
</tr>
<tr height="54" style=";height:54px">
<td rowspan="3" height="192" width="72" style="border-bottom-width: 1px; border-bottom-color: black; border-top-style: none;">
考核情况（由考核主体填写）</td>
<td colspan="2" width="111" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
考核扣分（根据标准每差1次/件/份扣2分）</td>
<td colspan="2" width="104" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
<input class="koufen text-input small-input" style="width:100px !important" placeholder="扣分" />
</td>
<td colspan="2" width="117" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
扣分原因</td>
<td colspan="4" width="613" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
<textarea class="koufenyuanyin text-input textarea" style="height:50px" placeholder="扣分原因"></textarea>
</td>
</tr>
<tr height="95" style=";height:95px">
<td colspan="2" height="95" width="111" style="border-left-style: none;">
考核主体评语</td>
<td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
<textarea class="kaohezhutipingyu text-input textarea" style="width:80px"></textarea>
</td>
</tr>
<tr height="43" style=";height:43px">
<td colspan="10" height="43" width="945" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
考核主体签名： &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间：<i class="time1">2014年8月31日</i>
</td>
</tr>
</tbody>
</table>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
  require("cadreexamine:widget/examine/examine.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>