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
            $.ajax({
                url: 'index.php?r=userinfo/login',
                dataType: 'json',
                method: 'POST',
                data: {
                    name: $('input[name=name]').val(),
                    password: $('input[name=password]').val()
                },
                success: function(json) {
                    if (json.success) {
                        location.href = "/web"
                    } else {
                        jError(json.msg, {
                            HorizontalPosition: 'center',
                            VerticalPosition: 'center'
                        });
                    }
                }
            });
        });
    }
}
module.exports = login;