var login = login || {};
login = {
    init: function() {
        var me = this;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        me.loginbtn = $('#submit-btn')
    },
    bind: function() {
        this.loginbtn.click(function() {
            //location.href = "/web";
            $.ajax({
                url: '',
                dataType: 'json',
                success: function(json) {
                    if(json.success) {
                        location.href = "/web"
                    }else {
                        alert(json.msg);
                    }
                }
            });
        });
    }
}
module.exports = login;