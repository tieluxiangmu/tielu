var editecurityprodu = editecurityprodu || {},
    url = 'index.php?r=twocontrarymanage/listtwocontrary';
editecurityprodu = {
    init: function() {
        // ��ʼ����Ԫ���Լ��¼�
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.submit = $('#js-btn-editwocontrary');
        me.cancel = $('#js-btn-cancelwocontrary');

        me.listenerpage(); //��������޸ĺ������ ������ˢ�ĸ���
    },
    bind: function() {
        var me = this;
        me.listenerpage(); //��������޸ĺ������ ������ˢ�ĸ���
        (me.submit).on('click', $.proxy(me._submitEvent, this));
        me.cancel.on('click', $.proxy(me.closeDialog, this));

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
    //��֤��
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
    closeDialog: function() {
        var list = top.window.$.dialog.list;
        for(var d in list) {
            list[d].close();
        }
    },
    _submitEvent: function(e) {
        //e.stopPropagation();
        var me = this;
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('�밴ϵͳҪ����д��Υ���⣡');
            return false;
        }
        alert('dsd');
        me.closeDialog();
    }
}
module.exports = editecurityprodu;