define("cadrerealistic:widget/twocontrary/twocontrary.js",function(e,t,n){var r=r||{},o="index.php?r=twocontrarymanage/listtwocontrary",i=window.ui;r={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind()},render:function(){var e=this;$("#js-a-twocontrary").addClass("current"),e.submitseacrhbtn=$("#submitseacrh-btn")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!"}),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.load(o,"init",!0),listener.on("twocontrarymanage-form","success",function(t,n){if("delete"==n){var r=location.search.split("&"),i=o;r.shift(),r.length>0&&(i+="&"+r.join("&")),e.load(i,"",!1),i=""}})},_submitseacrhEvent:function(){var e="";e+=o;var t=$("#schecktime").val();t&&(e+="&schecktime="+t);var n=$("#echecktime").val();n&&(e+="&echecktime="+n);var r=i.getchosensingleSelect("inspectionunit");r&&(e+="&inspectionunit="+r);var c=i.getchosensingleSelect("rummager");c&&(e+="&rummager="+c);var s=i.getchosensingleSelect("company");s&&(e+="&company="+s);var a=i.getchosensingleSelect("responsibleperson");a&&(e+="&responsibleperson="+a);var l=i.getchosensingleSelect("llegalcategory");l&&(e+="&llegalcategory="+l);var d=i.getchosensingleSelect("productionleader");d&&(e+="&productionleader="+d),window.history.pushState({},document.title,e),i.loadpage({url:e,conid:"js-p-listtwocontrary"}),e=""},load:function(e,t,n){var r=this;"init"==t&&r.redirturlparmas&&(e+=r.redirturlparmas),i.loadpage({url:e,index:n,conid:"js-p-listtwocontrary"})},setSearchword:function(){var e=Request.QueryString("schecktime"),t=Request.QueryString("echecktime"),n=decodeURIComponent(Request.QueryString("inspectionunit")),r=decodeURIComponent(Request.QueryString("rummager")),o=decodeURIComponent(Request.QueryString("company")),i=decodeURIComponent(Request.QueryString("responsibleperson")),c=decodeURIComponent(Request.QueryString("llegalcategory")),s=decodeURIComponent(Request.QueryString("productionleader"));e&&$("#schecktime").val(e),t&&$("#echecktime").val(t),n&&$("#inspectionunit").find("option[value='"+n+"']").attr("selected","selected"),r&&$("#rummager").find("option[value='"+r+"']").attr("selected","selected"),o&&$("#company").find("option[value='"+o+"']").attr("selected","selected"),i&&$("#responsibleperson").find("option[value='"+i+"']").attr("selected","selected"),c&&$("#llegalcategory").find("option[value='"+c+"']").attr("selected","selected"),s&&$("#productionleader").find("option[value='"+s+"']").attr("selected","selected")}},n.exports=r});