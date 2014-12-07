var addtwocontrary = addtwocontrary || {};
addtwocontrary = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
        $('#js-a-ecurityprodu').addClass('current');
        if (Request.QueryString('twoparams')) {
            var initdata = JSON.parse(decodeURIComponent(Request.QueryString('twoparams')));
            $('#Twocontrarymanage_checktime').val(initdata.checktime);
            $('#Twocontrarymanage_Illegalcontent').val(initdata.Illegalcontent);
            $('#Twocontrarymanage_llegalcategory').find("option[value='" + initdata.llegalcategory + "']").attr("selected", "selected");
            $('#Twocontrarymanage_rummager').val(initdata.rummager);

            $('#Twocontrarymanage_company').attr('data-value', initdata.company);
            $('.chosen-select[multiple]').each(function() {
                var id = $(this).attr('id');
                var value = $(this).attr('data-value');
                if (value) {
                    value = value.split(',');
                    for (var i = 0; i < value.length; i++) {
                        $('#' + id).find("option[value='" + value[i] + "']").attr("selected", "selected");
                    }
                }
            });
        }
    },
    render: function() {
        var me = this;
        me.addsaferiskbtn = $('#js-input-addsaferisk');
        me.addtwocontrary = $('#js-input-addtwocontrary');
        me.cancelbtn = $('#js-input-twocancel');
    },
    bind: function() {
        var me = this;
        (me.addsaferiskbtn).on('click', $.proxy(me._submitEvent, this));
        (me.addtwocontrary).on('click', $.proxy(me._submitEvent, this));
        (me.cancelbtn).on('click', $.proxy(me._cancelEvent, this));
        me.listenerjump();
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!",
            width: '250px'
        });
    },
    _cancelEvent: function() {
        location.href = "index.php?r=realinvestigation/index";
    },
    listenerjump: function() {
        var me = this;
        listener.on('twocontrarymanage-form', 'jump', function(event, info) {
            if (info == "jump") {
                ui.notifyDialog('两违问题已自动保存成功，系统即将跳转到安全风险录入', function() {
                    me._saferiskEvent();
                });
            };
        });
    },
    _saferiskEvent: function() {
        window.location.href = 'index.php?r=cadrerealistic/addsaferisk';
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#twocontrarymanage-form').validate({
            errorElement: "span",
            rules: {
                'Twocontrarymanage[checktime]': {
                    required: true
                },
                'Twocontrarymanage[inspectionunit]': {
                    required: true
                },
                'Twocontrarymanage[rummager]': {
                    required: true
                },
                'Twocontrarymanage[company]': {
                    required: true
                },
                'Twocontrarymanage[responsibleperson]': {
                    required: true
                },
                'Twocontrarymanage[jobname]': {
                    required: true
                },
                'Twocontrarymanage[politicalaffiliation]': {
                    required: true
                },
                'Twocontrarymanage[Illegalcontent]': {
                    required: true
                },
                'Twocontrarymanage[processingresults]': {
                    required: true
                },
                'Twocontrarymanage[llegalcategory]': {
                    required: true
                },
                'Twocontrarymanage[productionleader]': {
                    required: true
                },
                'Twocontrarymanage[buckleintegral]': {
                    required: true
                },
                'Twocontrarymanage[teamleaderIntegral]': {
                    required: true
                },
                'Twocontrarymanage[deduction]': {
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
        $('.chosen-select[multiple]').each(function() {
            var name = $(this).attr('name');
            var $form = $(this).parents('form');
            var id = $(this).attr('id');
            var value = window.ui.getchosenSelect(id);
            if (value) {
                $('<input type="hidden" name="' + name + '" value="' + value.join(',') + '">').appendTo($form);
            }
        });
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('请按系统要求填写两违管理数据！');
            return false;
        }

    }
}
module.exports = addtwocontrary;