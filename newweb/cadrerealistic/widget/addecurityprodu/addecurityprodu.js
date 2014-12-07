var addecurityprodu = addecurityprodu || {},
    commonhelp = window.ui;
addecurityprodu = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        if (Request.QueryString('produparams')) {
            var initdata = JSON.parse(decodeURIComponent(Request.QueryString('produparams')));
            $('#Safetyproduct_storagetime').val(initdata.storagetime);
            $('#Safetyproduct_theproblem').val(initdata.theproblem);
            $('#Safetyproduct_company').find("option[value='" + initdata.company + "']").attr("selected", "selected");
        }
        me.render();
        me.bind();
        $('#js-a-ecurityprodu').addClass('current');
    },
    render: function() {
        var me = this;
        me.myjumpurl = ""; //跳转的url
        me.addsaferiskbtn = $('#js-input-addsaferisk');
        me.cotiuetwo = $('#js-input-cotiuetwo');
        //me.jumpurlspan = $('#js-span-jumpurl');
        me.submitbtn = $('#js-input-submitpro');
        me.cancelbtn = $('#js-input-procancel');
        if (Request.QueryString("step") == "both") {
            //两者都是还要继续走下一步
            me.cotiuetwo.show(100);
        } else {
            me.addsaferiskbtn.show(100);
        }
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!",
            width: '265px'
        });
    },
    bind: function() {
        var me = this;
        (me.submitbtn).on('click', $.proxy(me._submitEvent, this));
        (me.cotiuetwo).on('click', $.proxy(me._submitEvent, this));
        (me.addsaferiskbtn).on('click', $.proxy(me._submitEvent, this));
        (me.cancelbtn).on('click', $.proxy(me._cancelEvent, this));
        me.listenerjump();
    },
    _cancelEvent: function() {
        location.href = "index.php?r=realinvestigation/index";
    },
    listenerjump: function() {
        var me = this;
        listener.on('safetyproduct-form', 'jump', function(event, info) {
            if (info == "jump") {
                ui.notifyDialog('安全生产问题已自动保存成功，系统即将跳转!', function() {
                    location.href = decodeURIComponent(me.myjumpurl);
                });
            };
        });
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#safetyproduct-form').validate({
            errorElement: "span",
            rules: {
                'Safetyproduct[infosources]': {
                    required: true
                },
                'Safetyproduct[theproblem]': {
                    required: true
                },
                'Safetyproduct[storagetime]': {
                    required: true
                },
                'Safetyproduct[thesolution]': {
                    required: true
                },
                'Safetyproduct[dutyperson]': {
                    required: true
                },
                'Safetyproduct[deadline]': {
                    required: true
                },
                'Safetyproduct[checkperson]': {
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
        var me = this,
            $el = $(e.currentTarget),
            jumpurl = $el.attr('data-jumpurl');
        if (jumpurl == "addtwocontrary" && Request.QueryString('twoparams')) {
            jumpurl += "&twoparams=" + Request.QueryString('twoparams').trim();
        };
        if (jumpurl) {
            me.myjumpurl = 'index.php?r=cadrerealistic/' + jumpurl; //设置页面要跳转的url
        }
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('请按系统要求填写安全生产数据！');
            return false;
        }
        var _safecompany = commonhelp.getchosenSelect('safe_company'),
            _dutypart = commonhelp.getchosenSelect('Safepro_duty');
        if (_safecompany && _dutypart) {
            $('#Safetyproduct_company').val(_safecompany);
            $('#Safetyproduct_dutydepartment').val(_dutypart);
        } else {
            jNotify('请按照系统要求填写！', {
                HorizontalPosition: 'center',
                VerticalPosition: 'center'
            });
        }
    }
}
module.exports = addecurityprodu;