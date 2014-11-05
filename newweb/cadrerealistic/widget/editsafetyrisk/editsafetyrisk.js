var editsafetyrisk = editsafetyrisk || {},
    url = 'index.php?r=safetyrisk/listysafetyrisk';
editsafetyrisk = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.submit = $('#js-btn-editsafetyrisk');
        me.listenerpage(); //负责监听修改后的数据 进行无刷的更改
    },
    bind: function() {
        var me = this;
        me.listenerpage(); //负责监听修改后的数据 进行无刷的更改
        (me.submit).on('click', $.proxy(me._submitEvent, this));
    },
    listenerpage: function() {
        var api = frameElement.api,
            W = api.opener;
        listener.on('safetyrisk-form', 'success', function(event, info) {
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
                    conid: 'js-p-listsafetyrisk'
                });
                tempurl = "";
            }
        });
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#safetyrisk-form').validate({
            errorElement: "span",
            rules: {
                'Safetyrisk[completiondate]': {
                    required: true
                },
                'Safetyrisk[riskname]': {
                    required: true
                },
                'Safetyrisk[riskclass]': {
                    required: true
                },
                'Safetyrisk[risksystem]': {
                    required: true
                },
                'Safetyrisk[reasonofrisk]': {
                    required: true
                },
                'Safetyrisk[consequence]': {
                    required: true
                },
                'Safetyrisk[measures]': {
                    required: true
                },
                'Safetyrisk[distribution]': {
                    required: true
                },
                'Safetyrisk[furtherproof]': {
                    required: true
                },
                'Safetyrisk[emergencyhand]': {
                    required: true
                },
                'Safetyrisk[responsibilitylead]': {
                    required: true
                },
                'Safetyrisk[dutypartments]': {
                    required: true
                },
                'Safetyrisk[coordinationpart]': {
                    required: true
                },
                'Safetyrisk[implementdate]': {
                    required: true
                },
                'Safetyrisk[notethebus]': {
                    required: true
                },
                'Safetyrisk[notehighspeedrail]': {
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
            jError('请按系统要求填写安全风险数据！');
            return false;
        }
    }
}
module.exports = editsafetyrisk;