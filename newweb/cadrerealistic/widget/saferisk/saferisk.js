var saferisk = saferisk || {},
    url = 'index.php?r=safetyrisk/listysafetyrisk',
    commonhelp = window.ui;
saferisk = {
    init: function(redirturlparmas) {
        // 初始化绑定元素以及事件
        var me = this;
        me.redirturlparmas = redirturlparmas;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        $('#js-a-saferisk').addClass('current');
        me.submitseacrhbtn = $('#submitseacrh-btn');
    },
    bind: function() {
        var me = this;
        me.setSearchword();
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!",
            width: '250px'
        });
        (me.submitseacrhbtn).on('click', $.proxy(me._submitseacrhEvent, this));
        me.load(url, 'init', true);
        //删除更新数据
        listener.on('safetyrisk-form', 'success', function(event, info) {
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
            conid: 'js-p-listsafetyrisk'
        });
    },
    _submitseacrhEvent: function() {
        var _url = "";
        _url += url;
        //实施日期
        var simplementdate = $('#simplementdate').val();
        if (simplementdate) {
            _url += "&simplementdate=" + simplementdate;
        };
        var eimplementdate = $('#eimplementdate').val();
        if (eimplementdate) {
            _url += "&eimplementdate=" + eimplementdate;
        };
        //完成日期
        var scompletiondate = $('#scompletiondate').val();
        if (scompletiondate) {
            _url += "&scompletiondate=" + scompletiondate;
        };
        var ecompletiondate = $('#ecompletiondate').val();
        if (ecompletiondate) {
            _url += "&ecompletiondate=" + ecompletiondate;
        };
        //风险分类
        var riskclass = commonhelp.getchosensingleSelect('riskclass');
        if (riskclass) {
            _url += "&riskclass=" + riskclass;
        };
        //系统
        var risksystem = commonhelp.getchosensingleSelect('risksystem');
        if (risksystem) {
            _url += "&risksystem=" + risksystem;
        };
        //负责领导
        var responsibilitylead = commonhelp.getchosenSelect('responsibilitylead');
        if (responsibilitylead) {
            _url += "&responsibilitylead=" + responsibilitylead;
        };
        //责任人
        var dutyperson = commonhelp.getchosensingleSelect('dutyperson');
        if (dutyperson) {
            _url += "&dutyperson=" + dutyperson;
        };
        //责任部门
        var dutypartments = commonhelp.getchosensingleSelect('dutypartments');
        if (dutypartments) {
            _url += "&dutypartments=" + dutypartments;
        };
        //配合部门
        var coordinationpart = commonhelp.getchosensingleSelect('coordinationpart');
        if (coordinationpart) {
            _url += "&coordinationpart=" + coordinationpart;
        };
        window.history.pushState({}, document.title, _url);
        /*无刷新加载搜索*/
        commonhelp.loadpage({
            url: _url,
            conid: 'js-p-listsafetyrisk'
        });
        _url = "";
    },
    setSearchword: function() {
        /*用户刷新URL的时候把用户的筛选数据回填*/
        var simplementdate = Request.QueryString('simplementdate'),
            eimplementdate = Request.QueryString('eimplementdate'),
            scompletiondate = Request.QueryString('scompletiondate'),
            ecompletiondate = Request.QueryString('ecompletiondate'),
            riskclass = decodeURIComponent(Request.QueryString('riskclass')),
            risksystem = decodeURIComponent(Request.QueryString('risksystem')),
            responsibilitylead = decodeURIComponent(Request.QueryString('responsibilitylead')),
            dutyperson = decodeURIComponent(Request.QueryString('dutyperson')),
            dutypartments = decodeURIComponent(Request.QueryString('dutypartments')),
            coordinationpart = decodeURIComponent(Request.QueryString('coordinationpart'));
        simplementdate && $('#simplementdate').val(simplementdate);
        eimplementdate && $('#eimplementdate').val(eimplementdate);
        scompletiondate && $('#scompletiondate').val(scompletiondate);
        ecompletiondate && $('#ecompletiondate').val(ecompletiondate);
        riskclass && $('#riskclass').find("option[value='" + riskclass + "']").attr("selected", "selected");
        risksystem && $('#risksystem').find("option[value='" + risksystem + "']").attr("selected", "selected");
        responsibilitylead && $('#responsibilitylead').find("option[value='" + responsibilitylead + "']").attr("selected", "selected");
        dutyperson && $('#dutyperson').find("option[value='" + dutyperson + "']").attr("selected", "selected");
        coordinationpart && $('#coordinationpart').find("option[value='" + coordinationpart + "']").attr("selected", "selected");
        dutypartments && $('#dutypartments').find("option[value='" + dutypartments + "']").attr("selected", "selected");
    }
}
module.exports = saferisk;