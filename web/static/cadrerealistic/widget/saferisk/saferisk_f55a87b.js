define("cadrerealistic:widget/saferisk/saferisk.js",function(e,t,s){var i=i||{},n="index.php?r=safetyrisk/listysafetyrisk",r=window.ui;i={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind()},render:function(){var e=this;$("#js-a-saferisk").addClass("current"),e.submitseacrhbtn=$("#submitseacrh-btn")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!"}),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.load(n,"init",!0),listener.on("safetyrisk-form","success",function(t,s){if("delete"==s){var i=location.search.split("&"),r=n;i.shift(),i.length>0&&(r+="&"+i.join("&")),e.load(r,"",!1),r=""}})},load:function(e,t,s){var i=this;"init"==t&&i.redirturlparmas&&(e+=i.redirturlparmas),r.loadpage({url:e,index:s,conid:"js-p-listsafetyrisk"})},_submitseacrhEvent:function(){var e="";e+=n;var t=$("#simplementdate").val();t&&(e+="&simplementdate="+t);var s=$("#eimplementdate").val();s&&(e+="&eimplementdate="+s);var i=$("#scompletiondate").val();i&&(e+="&scompletiondate="+i);var a=$("#ecompletiondate").val();a&&(e+="&ecompletiondate="+a);var o=r.getchosensingleSelect("riskclass");o&&(e+="&riskclass="+o);var d=r.getchosensingleSelect("risksystem");d&&(e+="&risksystem="+d);var l=r.getchosenSelect("responsibilitylead");l&&(e+="&responsibilitylead="+l);var c=r.getchosensingleSelect("dutyperson");c&&(e+="&dutyperson="+c);var u=r.getchosensingleSelect("dutypartments");u&&(e+="&dutypartments="+u);var p=r.getchosensingleSelect("coordinationpart");p&&(e+="&coordinationpart="+p),window.history.pushState({},document.title,e),r.loadpage({url:e,conid:"js-p-listsafetyrisk"}),e=""},setSearchword:function(){var e=Request.QueryString("simplementdate"),t=Request.QueryString("eimplementdate"),s=Request.QueryString("scompletiondate"),i=Request.QueryString("ecompletiondate"),n=decodeURIComponent(Request.QueryString("riskclass")),r=decodeURIComponent(Request.QueryString("risksystem")),a=decodeURIComponent(Request.QueryString("responsibilitylead")),o=decodeURIComponent(Request.QueryString("dutyperson")),d=decodeURIComponent(Request.QueryString("dutypartments")),l=decodeURIComponent(Request.QueryString("coordinationpart"));e&&$("#simplementdate").val(e),t&&$("#eimplementdate").val(t),s&&$("#scompletiondate").val(s),i&&$("#ecompletiondate").val(i),n&&$("#riskclass").find("option[value='"+n+"']").attr("selected","selected"),r&&$("#risksystem").find("option[value='"+r+"']").attr("selected","selected"),a&&$("#responsibilitylead").find("option[value='"+a+"']").attr("selected","selected"),o&&$("#dutyperson").find("option[value='"+o+"']").attr("selected","selected"),l&&$("#coordinationpart").find("option[value='"+l+"']").attr("selected","selected"),d&&$("#dutypartments").find("option[value='"+d+"']").attr("selected","selected")}},s.exports=i});