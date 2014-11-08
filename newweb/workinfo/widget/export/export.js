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

        this.exportexcel.click(function(){
            var start_time =  $('#start_time').val();
            var end_time = $('#end_time').val();

            location.href = "/web/index.php?r=WorkInfo/selectResult&start_time=" + start_time
                            + "&end_time=" + end_time;

        });
    }
}
module.exports = export;