define("cadrerealistic:widget/addecurityprodu/addecurityprodu.js",function(t,e,r){var i=i||{};i={init:function(){var t=this;if(Request.QueryString("produparams")){var e=JSON.parse(decodeURIComponent(Request.QueryString("produparams")));$("#Safetyproduct_storagetime").val(e.storagetime),$("#Safetyproduct_theproblem").val(e.theproblem),$("#Safetyproduct_company").find("option[value='"+e.company+"']").attr("selected","selected")}t.render(),t.bind(),$("#js-a-ecurityprodu").addClass("current")},render:function(){var t=this;t.myjumpurl="",t.addsaferiskbtn=$("#js-input-addsaferisk"),t.cotiuetwo=$("#js-input-cotiuetwo"),t.submitbtn=$("#js-input-submitpro"),t.cancelbtn=$("#js-input-procancel"),"both"==Request.QueryString("step")?t.cotiuetwo.show(100):t.addsaferiskbtn.show(100)},bind:function(){var t=this;t.submitbtn.on("click",$.proxy(t._submitEvent,this)),t.cotiuetwo.on("click",$.proxy(t._submitEvent,this)),t.addsaferiskbtn.on("click",$.proxy(t._submitEvent,this)),t.cancelbtn.on("click",$.proxy(t._cancelEvent,this)),t.listenerjump()},_cancelEvent:function(){location.href="index.php?r=realinvestigation/index"},listenerjump:function(){var t=this;listener.on("safetyproduct-form","jump",function(e,r){"jump"==r&&ui.notifyDialog("安全生产问题已自动保存成功，系统即将跳转!",function(){location.href=decodeURIComponent(t.myjumpurl)})})},formValidate:function(){var t=$("#safetyproduct-form").validate({errorElement:"span",rules:{"Safetyproduct[infosources]":{required:!0},"Safetyproduct[company]":{required:!0},"Safetyproduct[theproblem]":{required:!0},"Safetyproduct[storagetime]":{required:!0},"Safetyproduct[thesolution]":{required:!0},"Safetyproduct[dutydepartment]":{required:!0},"Safetyproduct[dutyperson]":{required:!0},"Safetyproduct[deadline]":{required:!0},"Safetyproduct[checkperson]":{required:!0}},errorPlacement:function(t,e){t.insertAfter(e)},success:function(t){t.html("&nbsp;").addClass("success")}});return t},_submitEvent:function(t){var e=this,r=$(t.currentTarget),i=r.attr("data-jumpurl");return"addtwocontrary"==i&&Request.QueryString("twoparams")&&(i+="&twoparams="+Request.QueryString("twoparams").trim()),i&&(e.myjumpurl="index.php?r=cadrerealistic/"+i),e.formValidate().form()?void 0:(t.preventDefault(),jError("请按系统要求填写安全生产数据！"),!1)}},r.exports=i});
;define("cadrerealistic:widget/addsaferisk/addsaferisk.js",function(e,r,i){var t=t||{};t={init:function(){var e=this;e.render(),e.bind(),$("#js-a-saferisk").addClass("current")},render:function(){var e=this;e.submitbtn=$("#js-input-submitsaferisk"),e.cancelbtn=$("#js-input-cancelsaferisk")},bind:function(){var e=this;e.submitbtn.on("click",$.proxy(e._submitEvent,this)),e.cancelbtn.on("click",$.proxy(e._cancelEvent,this))},_cancelEvent:function(){location.href="index.php?r=realinvestigation/index"},formValidate:function(){var e=$("#safetyrisk-form").validate({errorElement:"span",rules:{"Safetyrisk[riskname]":{required:!0},"Safetyrisk[riskclass]":{required:!0},"Safetyrisk[risksystem]":{required:!0},"Safetyrisk[reasonofrisk]":{required:!0},"Safetyrisk[consequence]":{required:!0},"Safetyrisk[measures]":{required:!0},"Safetyrisk[distribution]":{required:!0},"Safetyrisk[furtherproof]":{required:!0},"Safetyrisk[emergencyhand]":{required:!0},"Safetyrisk[responsibilitylead]":{required:!0},"Safetyrisk[dutypartments]":{required:!0},"Safetyrisk[coordinationpart]":{required:!0},"Safetyrisk[implementdate]":{required:!0},"Safetyrisk[notethebus]":{required:!0},"Safetyrisk[notehighspeedrail]":{required:!0}},errorPlacement:function(e,r){r.is(":radio")?e.appendTo(r.parent()):e.insertAfter(r)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var r=this;return r.formValidate().form()?void 0:(e.preventDefault(),jError("\n                        请按系统要求填写安全风险数据！ "),!1)}},i.exports=t});
;define("cadrerealistic:widget/addtwocontrary/addtwocontrary.js",function(e,r,a){var n=n||{};n={init:function(){var e=this;if(e.render(),e.bind(),$("#js-a-ecurityprodu").addClass("current"),Request.QueryString("twoparams")){var r=JSON.parse(decodeURIComponent(Request.QueryString("twoparams")));$("#Twocontrarymanage_checktime").val(r.checktime),$("#Twocontrarymanage_Illegalcontent").val(r.Illegalcontent),$("#Twocontrarymanage_llegalcategory").find("option[value='"+r.llegalcategory+"']").attr("selected","selected"),$("#Twocontrarymanage_rummager").find("option[value='"+r.rummager+"']").attr("selected","selected"),$("#Twocontrarymanage_company").find("option[value='"+r.company+"']").attr("selected","selected")}},render:function(){var e=this;e.addsaferiskbtn=$("#js-input-addsaferisk"),e.addtwocontrary=$("#js-input-addtwocontrary"),e.cancelbtn=$("#js-input-twocancel")},bind:function(){var e=this;e.addsaferiskbtn.on("click",$.proxy(e._submitEvent,this)),e.addtwocontrary.on("click",$.proxy(e._submitEvent,this)),e.cancelbtn.on("click",$.proxy(e._cancelEvent,this)),e.listenerjump()},_cancelEvent:function(){location.href="index.php?r=realinvestigation/index"},listenerjump:function(){var e=this;listener.on("twocontrarymanage-form","jump",function(r,a){"jump"==a&&ui.notifyDialog("两违问题已自动保存成功，系统即将跳转到安全风险录入",function(){e._saferiskEvent()})})},_saferiskEvent:function(){window.location.href="index.php?r=cadrerealistic/addsaferisk"},formValidate:function(){var e=$("#twocontrarymanage-form").validate({errorElement:"span",rules:{"Twocontrarymanage[checktime]":{required:!0},"Twocontrarymanage[inspectionunit]":{required:!0},"Twocontrarymanage[rummager]":{required:!0},"Twocontrarymanage[company]":{required:!0},"Twocontrarymanage[responsibleperson]":{required:!0},"Twocontrarymanage[jobname]":{required:!0},"Twocontrarymanage[politicalaffiliation]":{required:!0},"Twocontrarymanage[Illegalcontent]":{required:!0},"Twocontrarymanage[processingresults]":{required:!0},"Twocontrarymanage[llegalcategory]":{required:!0},"Twocontrarymanage[productionleader]":{required:!0},"Twocontrarymanage[buckleintegral]":{required:!0},"Twocontrarymanage[teamleaderIntegral]":{required:!0},"Twocontrarymanage[deduction]":{required:!0}},errorPlacement:function(e,r){e.insertAfter(r)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var r=this;return r.formValidate().form()?void 0:(e.preventDefault(),jError("请按系统要求填写两违管理数据！"),!1)}},a.exports=n});
;define("cadrerealistic:widget/cadrerealistic/cadrerealistic.js",function(e,t,n){var i=i||{},a="index.php?r=realinvestigation/realinvestigationman",r=window.ui;i={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind()},load:function(e,t,n){var i=this;"init"==t&&i.redirturlparmas&&(e+=i.redirturlparmas),r.loadpage({url:e,index:n,conid:"js-p-listcadrerealistic"})},render:function(){var e=this;e.cadcontinue=$("#js-input-cadcontinue"),e.submitseacrhbtn=$("#submitseacrh-btn"),e.submit=$("#js-btn-cardreal"),e.cancelbtn=$("#js-input-cadrealcancel")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!",width:"250px",single_text:""}),e.cadcontinue.on("click",$.proxy(e._submitEvent,this)),e._cadcontinueEvent(),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.submit.on("click",$.proxy(e._submitEvent,this)),e.cancelbtn.on("click",$.proxy(e._cancelEvent,this)),$("#js-a-realinvestigation").addClass("current"),e.load(a,"init",!0),listener.on("realinvestigation-form","success",function(t,n){if("add"==n&&(window.history.pushState({},document.title,"index.php?r=realinvestigation/index"),e.load(a)),"delete"==n){var i=location.search.split("&"),r=a;i.shift(),i.length>0&&(r+="&"+i.join("&")),e.load(r,"",!1),r=""}})},setSearchword:function(){var e=Request.QueryString("sdateofentry"),t=Request.QueryString("edateofentry"),n=decodeURIComponent(Request.QueryString("checkperson")),i=decodeURIComponent(Request.QueryString("checkmodel")),a=decodeURIComponent(Request.QueryString("adresonduty")),r=decodeURIComponent(Request.QueryString("categorynumber"));e&&$("#js-input-sdateofentry").val(e),t&&$("#js-input-edateofentry").val(e),n&&$("#checkperson").find("option[value='"+n+"']").attr("selected","selected"),i&&$("#checkmodel").find("option[value='"+i+"']").attr("selected","selected"),a&&$("#adresonduty").find("option[value='"+a+"']").attr("selected","selected"),r&&$("#categorynumber").find("option[value='"+r+"']").attr("selected","selected")},formValidate:function(){var e=$("#realinvestigation-form").validate({errorElement:"span",rules:{"Realinvestigation[dateofentry]":{required:!0},"Realinvestigation[timeofentry]":{required:!0},"Realinvestigation[checkperson]":{required:!0},"Realinvestigation[cadresonduty]":{required:!0},"Realinvestigation[foundproblem]":{required:!0},"Realinvestigation[noticeflag]":{required:!0},"Realinvestigation[categorynumber]":{required:!0},"Realinvestigation[checkcontents]":{required:!0},"Realinvestigation[improvement]":{required:!0},"Realinvestigation[checkmodel]":{required:!0},"Realinvestigation[company]":{required:!0}},errorPlacement:function(e,t){t.is(":radio")?e.appendTo(t.parent()):e.insertAfter(t)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_cancelEvent:function(){location.href="index.php?r=realinvestigation/index"},_cadcontinueEvent:function(){listener.on("realinvestigation-form","jump",function(e,t){if("jump"==t){var n=$("#js-select-cadrerealistic  option:selected"),i=n.val(),a=n.text(),r="index.php?r=cadrerealistic/",o={checktime:$("#Realinvestigation_dateofentry").val(),rummager:$("#Realinvestigation_checkperson  option:selected").val(),company:$("#Realinvestigation_company  option:selected").val(),Illegalcontent:$("#Realinvestigation_foundproblem").val(),llegalcategory:$("#Realinvestigation_categorynumber option:selected").val()},s={company:$("#Realinvestigation_company  option:selected").val(),theproblem:$("#Realinvestigation_foundproblem").val(),storagetime:$("#Realinvestigation_dateofentry").val()};switch(i){case"0":r+="addtwocontrary&twoparams="+JSON.stringify(o);break;case"1":r+="addecurityprodu&produparams="+JSON.stringify(s);break;case"2":r+="addecurityprodu&step=both&produparams="+JSON.stringify(s)+"&twoparams="+JSON.stringify(o)}ui.notifyDialog("系统即将跳转到"+a,function(){window.location.href=r})}})},_submitseacrhEvent:function(){var e="";e+=a,$("#js-input-sdateofentry").val()&&(e+="&sdateofentry="+$("#js-input-sdateofentry").val()),$("#js-input-edateofentry").val()&&(e+="&edateofentry="+$("#js-input-edateofentry").val());var t=r.getchosensingleSelect("checkperson");t&&(e+="&checkperson="+t);var n=r.getchosensingleSelect("checkmodel");n&&(e+="&checkmodel="+n);var i=r.getchosensingleSelect("adresonduty");i&&(e+="&adresonduty="+i);var o=r.getchosensingleSelect("categorynumber");o&&(e+="&categorynumber="+o),window.history.pushState({},document.title,e),r.loadpage({url:e,conid:"js-p-listcadrerealistic"}),e=""},_submitEvent:function(e){var t=this;return t.formValidate().form()?($("#Realinvestigation_dateofentry").focus(),void $("#realinvestigation-form input, #realinvestigation-form textarea, #realinvestigation-form select").val("")):(e.preventDefault(),jError("请按系统要求填写干部写实数据！"),!1)}},n.exports=i});
;define("cadrerealistic:widget/cadrerealisticdetail/cadrerealisticdetail.js",function(i,e,n){var r=r||{};r={init:function(){var i=this;i.render(),i.bind()},render:function(){},bind:function(){}},n.exports=r});
;define("cadrerealistic:widget/ecurityprodu/ecurityprodu.js",function(e,t,r){var s=s||{},n="index.php?r=safetyproduct/listsafetyproduct",i=window.ui;s={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind(),$("#js-a-ecurityprodu").addClass("current")},render:function(){var e=this;e.submitseacrhbtn=$("#submitseacrh-btn")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!"}),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.load(n,"init",!0),listener.on("safetyproduct-form","success",function(t,r){if("delete"==r){var s=location.search.split("&"),i=n;s.shift(),s.length>0&&(i+="&"+s.join("&")),e.load(i,"",!1),i=""}})},load:function(e,t,r){var s=this;"init"==t&&s.redirturlparmas&&(e+=s.redirturlparmas),i.loadpage({url:e,index:r,conid:"js-p-listecurityprodu"})},_submitseacrhEvent:function(){var e="";e+=n;var t=$("#sstoragetime").val();t&&(e+="&sstoragetime="+t);var r=$("#estoragetime").val();r&&(e+="&estoragetime="+r);var s=$("#sdeadline").val();s&&(e+="&sdeadline="+s);var o=$("#edeadline").val();o&&(e+="&edeadline="+o);var a=$("#sregistertime").val();a&&(e+="&sregistertime="+a);var d=$("#eregistertime").val();d&&(e+="&eregistertime="+d);var c=i.getchosensingleSelect("infosources");c&&(e+="&infosources="+c);var u=i.getchosensingleSelect("company");u&&(e+="&company="+u);var l=i.getchosenSelect("dutydepartment");l&&(e+="&dutydepartment="+l);var p=i.getchosensingleSelect("dutyperson");p&&(e+="&dutyperson="+p);var g=i.getchosensingleSelect("checkperson");g&&(e+="&checkperson="+g);var v=i.getchosensingleSelect("currentstatus");v&&(e+="&currentstatus="+v),window.history.pushState({},document.title,e),i.loadpage({url:e,conid:"js-p-listecurityprodu"}),e=""},setSearchword:function(){var e=Request.QueryString("sstoragetime"),t=Request.QueryString("estoragetime"),r=Request.QueryString("sdeadline"),s=Request.QueryString("edeadline"),n=Request.QueryString("sregistertime"),i=Request.QueryString("eregistertime"),o=decodeURIComponent(Request.QueryString("infosources")),a=decodeURIComponent(Request.QueryString("company")),d=decodeURIComponent(Request.QueryString("dutydepartment")),c=decodeURIComponent(Request.QueryString("dutyperson")),u=decodeURIComponent(Request.QueryString("checkperson")),l=decodeURIComponent(Request.QueryString("currentstatus"));if(e&&$("#sstoragetime").val(e),t&&$("#estoragetime").val(t),r&&$("#sdeadline").val(r),s&&$("#edeadline").val(s),n&&$("#sregistertime").val(n),i&&$("#eregistertime").val(i),o&&$("#infosources").find("option[value='"+o+"']").attr("selected","selected"),a&&$("#company").find("option[value='"+a+"']").attr("selected","selected"),d)for(var p=d.split(","),g=0;g<p.length;g++)$("#dutydepartment").find("option[value='"+p[g]+"']").attr("selected","selected");c&&$("#dutyperson").find("option[value='"+c+"']").attr("selected","selected"),u&&$("#checkperson").find("option[value='"+u+"']").attr("selected","selected"),l&&$("#currentstatus").find("option[value='"+l+"']").attr("selected","selected")}},r.exports=s});
;define("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js",function(e,i,t){var n=n||{},r="index.php?r=realinvestigation/realinvestigationman";n={init:function(){var e=this;e.render(),e.bind()},render:function(){var e=this;e.submit=$("#js-btn-editcardreal")},bind:function(){var e=this;e.listenerpage(),e.submit.on("click",$.proxy(e._submitEvent,this)),$("#js-btn-cancelcardreal").on("click",$.proxy(e.closeDialog,this))},closeDialog:function(){var e=$.dialog.list;for(var i in e)e[i].close()},listenerpage:function(){var e=frameElement.api,i=e.opener;listener.on("realinvestigation-form","success",function(e,t){if("update"==t){var n=r,a=i.parent.location.search.split("&");a.shift(),a.length>0&&(n+="&"+a.join("&")),ui.loadpage({url:n,father:!0,conid:"js-p-listcadrerealistic"}),n=""}})},formValidate:function(){var e=$("#realinvestigation-form").validate({errorElement:"span",rules:{"Realinvestigation[rectification]":{required:!0},"Realinvestigation[improvement]":{required:!0},"Realinvestigation[foundproblem]":{required:!0},"Realinvestigation[categorynumber]":{required:!0},"Realinvestigation[evaluationpoints]":{required:!0},"Realinvestigation[pointsreasons]":{required:!0},"Realinvestigation[assessmentmain]":{required:!0},"Realinvestigation[comment]":{required:!0}},errorPlacement:function(e,i){e.insertAfter(i)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var i=this;return i.formValidate().form()?void i.closeDialog():(e.preventDefault(),jError("请按系统要求填写干部写实数据！"),!1)}},t.exports=n});
;define("cadrerealistic:widget/editecurityprodu/editecurityprodu.js",function(e,t,r){var i=i||{},n="index.php?r=safetyproduct/listsafetyproduct";i={init:function(){var e=this;e.render(),e.bind()},render:function(){var e=this;e.submit=$("#js-btn-editecurityprodu"),e.listenerpage()},bind:function(){var e=this;e.listenerpage(),e.submit.on("click",$.proxy(e._submitEvent,this))},listenerpage:function(){var e=frameElement.api,t=e.opener;listener.on("safetyproduct-form","success",function(e,r){if("update"==r){var i=n,u=t.parent.location.search.split("&");u.shift(),u.length>0&&(i+="&"+u.join("&")),ui.loadpage({url:i,father:!0,conid:"js-p-listecurityprodu"}),i=""}})},formValidate:function(){var e=$("#safetyproduct-form").validate({errorElement:"span",rules:{"Safetyproduct[rectification]":{required:!0},"Safetyproduct[checkperson]":{required:!0},"Safetyproduct[registertime]":{required:!0},"Safetyproduct[comments]":{required:!0},"Safetyproduct[currentstatus]":{required:!0},"Safetyproduct[thesolution]":{required:!0}},errorPlacement:function(e,t){e.insertAfter(t)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var t=this;return t.formValidate().form()?void 0:(e.preventDefault(),jError("请按系统要求填写干部写实数据！"),!1)}},r.exports=i});
;define("cadrerealistic:widget/editsafetyrisk/editsafetyrisk.js",function(e,r,i){var t=t||{},s="index.php?r=safetyrisk/listysafetyrisk";t={init:function(){var e=this;e.render(),e.bind()},render:function(){var e=this;e.submit=$("#js-btn-editsafetyrisk"),e.listenerpage()},bind:function(){var e=this;e.listenerpage(),e.submit.on("click",$.proxy(e._submitEvent,this))},listenerpage:function(){var e=frameElement.api,r=e.opener;listener.on("safetyrisk-form","success",function(e,i){if("update"==i){var t=s,a=r.parent.location.search.split("&");a.shift(),a.length>0&&(t+="&"+a.join("&")),ui.loadpage({url:t,father:!0,conid:"js-p-listsafetyrisk"}),t=""}})},formValidate:function(){var e=$("#safetyrisk-form").validate({errorElement:"span",rules:{"Safetyrisk[completiondate]":{required:!0},"Safetyrisk[riskname]":{required:!0},"Safetyrisk[riskclass]":{required:!0},"Safetyrisk[risksystem]":{required:!0},"Safetyrisk[reasonofrisk]":{required:!0},"Safetyrisk[consequence]":{required:!0},"Safetyrisk[measures]":{required:!0},"Safetyrisk[distribution]":{required:!0},"Safetyrisk[furtherproof]":{required:!0},"Safetyrisk[emergencyhand]":{required:!0},"Safetyrisk[responsibilitylead]":{required:!0},"Safetyrisk[dutypartments]":{required:!0},"Safetyrisk[coordinationpart]":{required:!0},"Safetyrisk[implementdate]":{required:!0},"Safetyrisk[notethebus]":{required:!0},"Safetyrisk[notehighspeedrail]":{required:!0}},errorPlacement:function(e,r){e.insertAfter(r)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var r=this;return r.formValidate().form()?void 0:(e.preventDefault(),jError("请按系统要求填写安全风险数据！"),!1)}},i.exports=t});
;define("cadrerealistic:widget/editwocontrary/editwocontrary.js",function(r,e,n){var t=t||{},a="index.php?r=twocontrarymanage/listtwocontrary";t={init:function(){var r=this;r.render(),r.bind()},render:function(){var r=this;r.submit=$("#js-btn-editwocontrary"),r.listenerpage()},bind:function(){var r=this;r.listenerpage(),r.submit.on("click",$.proxy(r._submitEvent,this))},listenerpage:function(){var r=frameElement.api,e=r.opener;listener.on("twocontrarymanage-form","success",function(r,n){if("update"==n){var t=a,o=e.parent.location.search.split("&");o.shift(),o.length>0&&(t+="&"+o.join("&")),ui.loadpage({url:t,father:!0,conid:"js-p-listtwocontrary"}),t=""}})},formValidate:function(){var r=$("#twocontrarymanage-form").validate({errorElement:"span",rules:{"Twocontrarymanage[Illegalcontent]":{required:!0},"Twocontrarymanage[processingresults]":{required:!0},"Twocontrarymanage[llegalcategory]":{required:!0},"Twocontrarymanage[deduction]":{required:!0},"Twocontrarymanage[productionleader]":{required:!0},"Twocontrarymanage[buckleintegral]":{required:!0},"Twocontrarymanage[buckleintegral]":{required:!0},"Twocontrarymanage[teamleaderIntegral]":{required:!0}},errorPlacement:function(r,e){r.insertAfter(e)},success:function(r){r.html("&nbsp;").addClass("success")}});return r},_submitEvent:function(r){var e=this;return e.formValidate().form()?void 0:(r.preventDefault(),jError("请按系统要求填写两违问题！"),!1)}},n.exports=t});
;define("cadrerealistic:widget/saferisk/saferisk.js",function(e,t,s){var i=i||{},n="index.php?r=safetyrisk/listysafetyrisk",r=window.ui;i={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind()},render:function(){var e=this;$("#js-a-saferisk").addClass("current"),e.submitseacrhbtn=$("#submitseacrh-btn")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!"}),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.load(n,"init",!0),listener.on("safetyrisk-form","success",function(t,s){if("delete"==s){var i=location.search.split("&"),r=n;i.shift(),i.length>0&&(r+="&"+i.join("&")),e.load(r,"",!1),r=""}})},load:function(e,t,s){var i=this;"init"==t&&i.redirturlparmas&&(e+=i.redirturlparmas),r.loadpage({url:e,index:s,conid:"js-p-listsafetyrisk"})},_submitseacrhEvent:function(){var e="";e+=n;var t=$("#simplementdate").val();t&&(e+="&simplementdate="+t);var s=$("#eimplementdate").val();s&&(e+="&eimplementdate="+s);var i=$("#scompletiondate").val();i&&(e+="&scompletiondate="+i);var a=$("#ecompletiondate").val();a&&(e+="&ecompletiondate="+a);var o=r.getchosensingleSelect("riskclass");o&&(e+="&riskclass="+o);var d=r.getchosensingleSelect("risksystem");d&&(e+="&risksystem="+d);var l=r.getchosenSelect("responsibilitylead");l&&(e+="&responsibilitylead="+l);var c=r.getchosensingleSelect("dutyperson");c&&(e+="&dutyperson="+c);var u=r.getchosensingleSelect("dutypartments");u&&(e+="&dutypartments="+u);var p=r.getchosensingleSelect("coordinationpart");p&&(e+="&coordinationpart="+p),window.history.pushState({},document.title,e),r.loadpage({url:e,conid:"js-p-listsafetyrisk"}),e=""},setSearchword:function(){var e=Request.QueryString("simplementdate"),t=Request.QueryString("eimplementdate"),s=Request.QueryString("scompletiondate"),i=Request.QueryString("ecompletiondate"),n=decodeURIComponent(Request.QueryString("riskclass")),r=decodeURIComponent(Request.QueryString("risksystem")),a=decodeURIComponent(Request.QueryString("responsibilitylead")),o=decodeURIComponent(Request.QueryString("dutyperson")),d=decodeURIComponent(Request.QueryString("dutypartments")),l=decodeURIComponent(Request.QueryString("coordinationpart"));e&&$("#simplementdate").val(e),t&&$("#eimplementdate").val(t),s&&$("#scompletiondate").val(s),i&&$("#ecompletiondate").val(i),n&&$("#riskclass").find("option[value='"+n+"']").attr("selected","selected"),r&&$("#risksystem").find("option[value='"+r+"']").attr("selected","selected"),a&&$("#responsibilitylead").find("option[value='"+a+"']").attr("selected","selected"),o&&$("#dutyperson").find("option[value='"+o+"']").attr("selected","selected"),l&&$("#coordinationpart").find("option[value='"+l+"']").attr("selected","selected"),d&&$("#dutypartments").find("option[value='"+d+"']").attr("selected","selected")}},s.exports=i});
;define("cadrerealistic:widget/twocontrary/twocontrary.js",function(e,t,n){var r=r||{},o="index.php?r=twocontrarymanage/listtwocontrary",i=window.ui;r={init:function(e){var t=this;t.redirturlparmas=e,t.render(),t.bind()},render:function(){var e=this;$("#js-a-twocontrary").addClass("current"),e.submitseacrhbtn=$("#submitseacrh-btn")},bind:function(){var e=this;e.setSearchword(),$(".chosen-select").chosen({no_results_text:"没有查找结果!"}),e.submitseacrhbtn.on("click",$.proxy(e._submitseacrhEvent,this)),e.load(o,"init",!0),listener.on("twocontrarymanage-form","success",function(t,n){if("delete"==n){var r=location.search.split("&"),i=o;r.shift(),r.length>0&&(i+="&"+r.join("&")),e.load(i,"",!1),i=""}})},_submitseacrhEvent:function(){var e="";e+=o;var t=$("#schecktime").val();t&&(e+="&schecktime="+t);var n=$("#echecktime").val();n&&(e+="&echecktime="+n);var r=i.getchosensingleSelect("inspectionunit");r&&(e+="&inspectionunit="+r);var c=i.getchosensingleSelect("rummager");c&&(e+="&rummager="+c);var s=i.getchosensingleSelect("company");s&&(e+="&company="+s);var a=i.getchosensingleSelect("responsibleperson");a&&(e+="&responsibleperson="+a);var l=i.getchosensingleSelect("llegalcategory");l&&(e+="&llegalcategory="+l);var d=i.getchosensingleSelect("productionleader");d&&(e+="&productionleader="+d),window.history.pushState({},document.title,e),i.loadpage({url:e,conid:"js-p-listtwocontrary"}),e=""},load:function(e,t,n){var r=this;"init"==t&&r.redirturlparmas&&(e+=r.redirturlparmas),i.loadpage({url:e,index:n,conid:"js-p-listtwocontrary"})},setSearchword:function(){var e=Request.QueryString("schecktime"),t=Request.QueryString("echecktime"),n=decodeURIComponent(Request.QueryString("inspectionunit")),r=decodeURIComponent(Request.QueryString("rummager")),o=decodeURIComponent(Request.QueryString("company")),i=decodeURIComponent(Request.QueryString("responsibleperson")),c=decodeURIComponent(Request.QueryString("llegalcategory")),s=decodeURIComponent(Request.QueryString("productionleader"));e&&$("#schecktime").val(e),t&&$("#echecktime").val(t),n&&$("#inspectionunit").find("option[value='"+n+"']").attr("selected","selected"),r&&$("#rummager").find("option[value='"+r+"']").attr("selected","selected"),o&&$("#company").find("option[value='"+o+"']").attr("selected","selected"),i&&$("#responsibleperson").find("option[value='"+i+"']").attr("selected","selected"),c&&$("#llegalcategory").find("option[value='"+c+"']").attr("selected","selected"),s&&$("#productionleader").find("option[value='"+s+"']").attr("selected","selected")}},n.exports=r});