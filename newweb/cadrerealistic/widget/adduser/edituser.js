var edituser = {
    init: function() {
        $('#saveUser').on('click', function() {
            $('#user-info-form').submit();
        });
         $('input[name="UserInfo[parentLeader]"]').autocomplete(
            'index.php',{
                extraParams: {
                    r:'userinfo/suggest'
                }

        });
    }
};
module.exports = edituser;