define("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js",function(e,i,t){var n=n||{},r="index.php?r=realinvestigation/realinvestigationman";n={init:function(){var e=this;e.render(),e.bind()},render:function(){var e=this;e.submit=$("#js-btn-editcardreal")},bind:function(){var e=this;e.listenerpage(),e.submit.on("click",$.proxy(e._submitEvent,this)),$("#js-btn-cancelcardreal").on("click",$.proxy(e.closeDialog,this))},closeDialog:function(){alert("dsd");for(var e in $.dialog.list)e&&e.close()},listenerpage:function(){var e=frameElement.api,i=e.opener;listener.on("realinvestigation-form","success",function(e,t){if("update"==t){var n=r,a=i.parent.location.search.split("&");a.shift(),a.length>0&&(n+="&"+a.join("&")),ui.loadpage({url:n,father:!0,conid:"js-p-listcadrerealistic"}),n=""}})},formValidate:function(){var e=$("#realinvestigation-form").validate({errorElement:"span",rules:{"Realinvestigation[rectification]":{required:!0},"Realinvestigation[improvement]":{required:!0},"Realinvestigation[foundproblem]":{required:!0},"Realinvestigation[categorynumber]":{required:!0},"Realinvestigation[evaluationpoints]":{required:!0},"Realinvestigation[pointsreasons]":{required:!0},"Realinvestigation[assessmentmain]":{required:!0},"Realinvestigation[comment]":{required:!0}},errorPlacement:function(e,i){e.insertAfter(i)},success:function(e){e.html("&nbsp;").addClass("success")}});return e},_submitEvent:function(e){var i=this;return i.formValidate().form()?void i.closeDialog():(e.preventDefault(),jError("请按系统要求填写干部写实数据！"),!1)}},t.exports=n});