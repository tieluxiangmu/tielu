var twocontrary = twocontrary || {},
    url = 'index.php?r=twocontrarymanage/listtwocontrary',
    commonhelp = window.ui;
twocontrary = {
    init: function(redirturlparmas) {
        // 初始化绑定元素以及事件
        var me = this;
        me.redirturlparmas = redirturlparmas;
        me.render();
        me.bind();
    },
    render: function() {
        var me = this;
        $('#js-a-twocontrary').addClass('current');
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
        //提交成功更新数据
        listener.on('twocontrarymanage-form', 'success', function(event, info) {
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
    _submitseacrhEvent: function() {
        var _url = "";
        _url += url;
        //检查时间
        var schecktime = $('#schecktime').val();
        if (schecktime) {
            _url += "&schecktime=" + schecktime;
        };
        var echecktime = $('#echecktime').val();
        if (echecktime) {
            _url += "&echecktime=" + echecktime;
        };
        //检查单位
        var inspectionunit = commonhelp.getchosensingleSelect('inspectionunit');
        if (inspectionunit) {
            _url += "&inspectionunit=" + inspectionunit;
        };
        //检查人
        var rummager = $('#rummager').val();
        if (rummager) {
            _url += "&rummager=" + rummager;
        };
        //被查单位
        var company = commonhelp.getchosenSelect('company');
        if (company) {
            _url += "&company=" + company;
        };
        //责任人
        var responsibleperson = $('#responsibleperson').val();
        if (responsibleperson) {
            _url += "&responsibleperson=" + responsibleperson;
        };
        //违章类别
        var llegalcategory = commonhelp.getchosensingleSelect('llegalcategory');
        if (llegalcategory) {
            _url += "&llegalcategory=" + llegalcategory;
        };
        //所在生产小组长
        var productionleader = $('#productionleader').val();
        if (productionleader) {
            _url += "&productionleader=" + productionleader;
        };
        window.history.pushState({}, document.title, _url);
        /*无刷新加载搜索*/
        commonhelp.loadpage({
            url: _url,
            conid: 'js-p-listtwocontrary'
        });
        _url = "";
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
            conid: 'js-p-listtwocontrary'
        });
    },
    setSearchword: function() {
        /*用户刷新URL的时候把用户的筛选数据回填*/
        var schecktime = Request.QueryString('schecktime'),
            echecktime = Request.QueryString('echecktime'),
            inspectionunit = decodeURIComponent(Request.QueryString('inspectionunit')),
            rummager = decodeURIComponent(Request.QueryString('rummager')),
            company = decodeURIComponent(Request.QueryString('company')),
            responsibleperson = decodeURIComponent(Request.QueryString('responsibleperson')),
            llegalcategory = decodeURIComponent(Request.QueryString('llegalcategory')),
            productionleader = decodeURIComponent(Request.QueryString('productionleader'));
        schecktime && $('#schecktime').val(schecktime);
        echecktime && $('#echecktime').val(echecktime);
        inspectionunit && $('#inspectionunit').find("option[value='" + inspectionunit + "']").attr("selected", "selected");
        rummager && $('#rummager').val(rummager);
        
        $('#company').attr('data-value', company);
        $('.chosen-select[multiple]').each(function() {
            var id = $(this).attr('id');
            var value = $(this).attr('data-value');
            if(value){
                value = value.split(',');
                for (var i = 0; i < value.length; i++) {
                    $('#'+id).find("option[value='" + value[i] + "']").attr("selected", "selected");
                }
            }
        });

        responsibleperson && $('#responsibleperson').val(responsibleperson);
        llegalcategory && $('#llegalcategory').val(llegalcategory);
        productionleader && $('#productionleader').val(productionleader);
    }
}
module.exports = twocontrary;