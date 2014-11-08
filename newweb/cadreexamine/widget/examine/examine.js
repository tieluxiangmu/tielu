var examine = examine || {};
examine = {
    init: function() {
        $('#search-btn').on('click', function() {
            var year = $('#year-select').val();
            var month = $('#month-select').val();
            var person = $('#person-select').val();
        });
    }
}
module.exports = examine;