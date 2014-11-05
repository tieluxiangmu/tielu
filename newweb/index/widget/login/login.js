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
            location.href = "/web";
        });
    }
}
module.exports = login;