var editcadrerealistic = editcadrerealistic || {},
    url = 'index.php?r=realinvestigation/realinvestigationman';
editcadrerealistic = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.submit = $('#js-btn-editcardreal');
        me.cancel = $('#js-btn-cancelcardreal');
    },
    bind: function() {
        var me = this;
        me.listenerpage(); //负责监听修改后的数据 进行无刷的更改
        $(me.submit).on('click', $.proxy(me._submitEvent, this));
        me.cancel.on('click', $.proxy(me.closeDialog, this));
    },
    closeDialog: function() {
        var list = top.window.$.dialog.list;
        for(var d in list) {
            list[d].close();
        }
        for(var d in list) {
            list[d].close();
        }
    },
    listenerpage: function() {
        var api = frameElement.api,
            W = api.opener;
        listener.on('realinvestigation-form', 'success', function(event, info) {
            if (info == "update") {
                var tempurl = url,
                    params = W.parent.location.search.split('&');
                params.shift();
                if (params.length > 0) {
                    tempurl += "&" + params.join('&');
                }
                ui.loadpage({
                    url: tempurl,
                    father: true,
                    conid: 'js-p-listcadrerealistic'
                });
                tempurl = "";
            }
        });
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#realinvestigation-form').validate({
            errorElement: "span",
            rules: {
                'Realinvestigation[rectification]': {
                    required: true
                },
                'Realinvestigation[improvement]': {
                    required: true
                },
                'Realinvestigation[foundproblem]': {
                    required: true
                },
                'Realinvestigation[categorynumber]': {
                    required: true
                },
                'Realinvestigation[evaluationpoints]': {
                    required: true
                },
                'Realinvestigation[pointsreasons]': {
                    required: true
                },
                'Realinvestigation[assessmentmain]': {
                    required: true
                },
                'Realinvestigation[comment]': {
                    required: true
                }
            },
            errorPlacement: function(error, element) {
                error.insertAfter(element);
            },
            success: function(label) {
                label.html("&nbsp;").addClass("success");
            }
        });
        return $validate;
    },
    _submitEvent: function(e) {
        //e.stopPropagation();
        var me = this;
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('请按系统要求填写干部写实数据！');
            return false;
        }
        me.closeDialog();
        
    }
}
module.exports = editcadrerealistic;