var editecurityprodu = editecurityprodu || {},
    url = 'index.php?r=twocontrarymanage/listtwocontrary';
editecurityprodu = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.submit = $('#js-btn-editwocontrary');
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
        listener.on('twocontrarymanage-form', 'success', function(event, info) {
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
                    conid: 'js-p-listtwocontrary'
                });
                tempurl = "";
            }
        });
    },
    //验证表单
    formValidate: function() {
        var $validate = $('#twocontrarymanage-form').validate({
            errorElement: "span",
            rules: {
                'Twocontrarymanage[Illegalcontent]': {
                    required: true
                },
                'Twocontrarymanage[processingresults]': {
                    required: true
                },
                'Twocontrarymanage[llegalcategory]': {
                    required: true
                },
                'Twocontrarymanage[deduction]': {
                    required: true
                },
                'Twocontrarymanage[productionleader]': {
                    required: true
                },
                'Twocontrarymanage[buckleintegral]': {
                    required: true
                },
                'Twocontrarymanage[buckleintegral]': {
                    required: true
                },
                'Twocontrarymanage[teamleaderIntegral]': {
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
            jError('请按系统要求填写两违问题！');
            return false;
        }
    }
}
module.exports = editecurityprodu;