var cadrerealisticdetail = cadrerealisticdetail || {};
cadrerealisticdetail = {
    init: function() {
        // 初始化绑定元素以及事件
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.cancel = $('#js-btn-cancelcardreal');

    },
    bind: function() {
        var me = this;
        me.cancel.on('click', me.closeDialog);
    },
    closeDialog: function() {
        var list = top.window.$.dialog.list;
        for(var d in list) {
            list[d].close();
        }
    },
}
module.exports = cadrerealisticdetail;