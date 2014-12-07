var export = export || {};
export = {
    init: function() {
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.exportexcel = $('.export');
    },
    bind: function() {

        this.exportexcel.click(function() {
            var year = $('#year-select').val();
            var month = $('#month-select').val();
            var url = "/web/index.php?r=WorkInfo/selectResult&";
            url += 'year=' + year;
            url += '&month=' + month;
            if (year == '' || month == '') {
                $.dialog.alert('筛选条件选择不完整');
                return;
            }
            location.href = url;

        });
    }
}
module.exports = export;