var addsaferisk = addsaferisk || {};
addsaferisk = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
        $('#js-a-saferisk').addClass('current');
    },
    render: function() {
        var me = this;
        me.submitbtn = $('#js-input-submitsaferisk');
        me.cancelbtn = $('#js-input-cancelsaferisk');
    },
    bind: function() {
        var me = this;
        (me.submitbtn).on('click', $.proxy(me._submitEvent, this));
        (me.cancelbtn).on('click', $.proxy(me._cancelEvent, this));
    },
    _cancelEvent: function() {
        location.href = "index.php?r=realinvestigation/index";
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#safetyrisk-form').validate({
            errorElement: "span",
            rules: {
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
                if (element.is(":radio")) {
                    error.appendTo(element.parent());
                } else {
                    error.insertAfter(element);
                }
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
            jError('
                        请按系统要求填写安全风险数据！ ');
            return false;
        }
    }
}
module.exports = addsaferisk;