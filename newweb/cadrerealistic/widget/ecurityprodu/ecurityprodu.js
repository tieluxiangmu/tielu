var ecurityprodu = ecurityprodu || {},
    url = 'index.php?r=safetyproduct/listsafetyproduct',
    commonhelp = window.ui;
ecurityprodu = {
    init: function(redirturlparmas) {
        // 初始化绑定元素以及事件
        var me = this;
        me.redirturlparmas = redirturlparmas;
        me.render();
        me.bind();
        $('#js-a-ecurityprodu').addClass('current');
    },
    render: function() {
        var me = this;
        me.submitseacrhbtn = $('#submitseacrh-btn');
    },
    bind: function() {
        var me = this;
        me.setSearchword();
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!"
        });
        (me.submitseacrhbtn).on('click', $.proxy(me._submitseacrhEvent, this));
        me.load(url, 'init', true);
        //提交成功更新数据
        listener.on('safetyproduct-form', 'success', function(event, info) {
            if (info == "delete") {
                var params = location.search.split('&'),
                    _temp = url;
                params.shift();
                if (params.length > 0) {
                    _temp += "&" + params.join('&');
                }
                me.load(_temp, "", false);
                _temp = "";
            }
        });
    },
    load: function(loadurl, loadtype, indexflag) {
        var me = this;
        /*处理用户刷新*/
        if (loadtype == "init" && me.redirturlparmas) {
            loadurl += me.redirturlparmas;
        };
        commonhelp.loadpage({
            url: loadurl,
            index: indexflag,
            conid: 'js-p-listecurityprodu'
        });
    },
    _submitseacrhEvent: function() {
        var _url = "";
        _url += url;
        //入库时间
        var sstoragetime = $('#sstoragetime').val();
        if (sstoragetime) {
            _url += "&sstoragetime=" + sstoragetime;
        };
        var estoragetime = $('#estoragetime').val();
        if (estoragetime) {
            _url += "&estoragetime=" + estoragetime;
        };
        //完成期限
        var sdeadline = $('#sdeadline').val();
        if (sdeadline) {
            _url += "&sdeadline=" + sdeadline;
        };
        var edeadline = $('#edeadline').val();
        if (edeadline) {
            _url += "&edeadline=" + edeadline;
        };
        //销号时间
        var sregistertime = $('#sregistertime').val();
        if (sregistertime) {
            _url += "&sregistertime=" + sregistertime;
        };
        var eregistertime = $('#eregistertime').val();
        if (eregistertime) {
            _url += "&eregistertime=" + eregistertime;
        };
        //信息来源
        var infosources = commonhelp.getchosensingleSelect('infosources');
        if (infosources) {
            _url += "&infosources=" + infosources;
        };
        //单位
        var company = commonhelp.getchosensingleSelect('company');
        if (company) {
            _url += "&company=" + company;
        };
        //责任部门
        var dutydepartment = commonhelp.getchosenSelect('dutydepartment');
        if (dutydepartment) {
            _url += "&dutydepartment=" + dutydepartment;
        };
        //责任人
        var dutyperson = commonhelp.getchosensingleSelect('dutyperson');
        if (dutyperson) {
            _url += "&dutyperson=" + dutyperson;
        };
        //检查人
        var checkperson = commonhelp.getchosensingleSelect('checkperson');
        if (checkperson) {
            _url += "&checkperson=" + checkperson;
        };
        //目前问题状况
        var currentstatus = commonhelp.getchosensingleSelect('currentstatus');
        if (currentstatus) {
            _url += "&currentstatus=" + currentstatus;
        };
        window.history.pushState({}, document.title, _url);
        /*无刷新加载搜索*/
        commonhelp.loadpage({
            url: _url,
            conid: 'js-p-listecurityprodu'
        });
        _url = "";
    },
    setSearchword: function() {
        /*用户刷新URL的时候把用户的筛选数据回填*/
        var sstoragetime = Request.QueryString('sstoragetime'),
            estoragetime = Request.QueryString('estoragetime'),
            sdeadline = Request.QueryString('sdeadline'),
            edeadline = Request.QueryString('edeadline'),
            sregistertime = Request.QueryString('sregistertime'),
            eregistertime = Request.QueryString('eregistertime'),
            infosources = decodeURIComponent(Request.QueryString('infosources')),
            company = decodeURIComponent(Request.QueryString('company')),
            dutydepartment = decodeURIComponent(Request.QueryString('dutydepartment')),
            dutyperson = decodeURIComponent(Request.QueryString('dutyperson')),
            checkperson = decodeURIComponent(Request.QueryString('checkperson')),
            currentstatus = decodeURIComponent(Request.QueryString('currentstatus'));
        sstoragetime && $('#sstoragetime').val(sstoragetime);
        estoragetime && $('#estoragetime').val(estoragetime);
        sdeadline && $('#sdeadline').val(sdeadline);
        edeadline && $('#edeadline').val(edeadline);
        sregistertime && $('#sregistertime').val(sregistertime);
        eregistertime && $('#eregistertime').val(eregistertime);
        infosources && $('#infosources').find("option[value='" + infosources + "']").attr("selected", "selected");
        company && $('#company').find("option[value='" + company + "']").attr("selected", "selected");
        if (dutydepartment) {
            var arrs = dutydepartment.split(',');
            for (var i = 0; i < arrs.length; i++) {
                $('#dutydepartment').find("option[value='" + arrs[i] + "']").attr("selected", "selected");
            };
        };
        dutyperson && $('#dutyperson').find("option[value='" + dutyperson + "']").attr("selected", "selected");
        checkperson && $('#checkperson').find("option[value='" + checkperson + "']").attr("selected", "selected");
        currentstatus && $('#currentstatus').find("option[value='" + currentstatus + "']").attr("selected", "selected");
    }
}
module.exports = ecurityprodu;