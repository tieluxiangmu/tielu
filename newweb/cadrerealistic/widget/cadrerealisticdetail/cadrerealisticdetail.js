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
    },
    closeDialog: function() {
        var list = top.window.$.dialog.list;
        for(var d in list) {
            list[d].close();
        }
    },
    bind: function() {
        var me = this;
        $('#js-btn-cancelcardreal').on('click',$.proxy(me.closeDialog, this));

    }
}
module.exports = cadrerealisticdetail;