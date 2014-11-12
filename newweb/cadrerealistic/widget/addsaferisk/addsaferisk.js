var addsaferisk = addsaferisk || {},
    commonhelp = window.ui;
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
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!",
            width: '250px'
        });
    },
    _cancelEvent: function() {
        location.href = "index.php?r=realinvestigation/index";
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#safetyrisk-form').validate({
            errorElement: "span",
            rules: {
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
                'Safetyrisk[furtherproof]': {
                    required: true
                },
                'Safetyrisk[emergencyhand]': {
                    required: true
                },
                'Safetyrisk[responsibilitylead]': {
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
        var me = this;
        //e.stopPropagation();
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('请按系统要求填写安全风险数据！');
            return false;
        }
        var _saferisk = commonhelp.getchosenSelect('safe_risk'), //风险名称
            _safetyriskclass = commonhelp.getchosenSelect('safety_riskclass'), //风险分类
            _safedistribution = commonhelp.getchosenSelect('safe_distribution'), //分布情况
            _safetyriskcoord = commonhelp.getchosenSelect('safetyriskcoord'), //配合部门
            _safetyriskduty = commonhelp.getchosenSelect('safetyrisk_duty'); //责任部门
        alert(_saferisk);
        if (_saferisk && _safetyriskclass && _safedistribution && _safetyriskduty) {
            $('#Safetyrisk_riskname').val(_saferisk);
            $('#Safetyrisk_riskclass').val(_safetyriskclass);
            $('#Safetyrisk_distribution').val(_safedistribution);
            $('#Safetyrisk_coordinationpart').val(_safetyriskcoord);
            $('#Safetyrisk_dutypartments').val(_safetyriskduty);
        } else {
            e.preventDefault();
            jNotify('请按照系统要求填写！', {
                HorizontalPosition: 'center',
                VerticalPosition: 'center'
            });
            return false;
        }
    }
}
module.exports = addsaferisk;