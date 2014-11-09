//$(document).ready(function() {

//Sidebar Accordion Menu:

$("#main-nav li ul").hide(); // Hide all sub menus
$("#main-nav li a.current").parent().find("ul").slideToggle("slow"); // Slide down the current menu item's sub menu

$("#main-nav li a.nav-top-item").click( // When a top menu item is clicked...
    function() {
        $(this).parent().siblings().find("ul").slideUp("normal"); // Slide up all sub menus except the one clicked
        $(this).next().slideToggle("normal"); // Slide down the clicked sub menu
        return false;
    }
);

// Sidebar Accordion Menu Hover Effect:

$("#main-nav li .nav-top-item").hover(
    function() {
        $(this).stop().animate({
            paddingRight: "25px"
        }, 200);
    },
    function() {
        $(this).stop().animate({
            paddingRight: "15px"
        });
    }
);

//Content Box 相关操作

$(".content-box-header h3").css({
    "cursor": "s-resize"
}); // H3的鼠标给成给拖动的状态
$(".closed-box .content-box-content").hide(); // Hide the content of the header if it has the class "closed"
$(".closed-box .content-box-tabs").hide(); // Hide the tabs in the header if it has the class "closed"

$(".content-box-header h3").click( // When the h3 is clicked...
    function() {
        $(this).parent().next().toggle(); // Toggle the Content Box
        $(this).parent().parent().toggleClass("closed-box"); // Toggle the class "closed-box" on the content box
        $(this).parent().find(".content-box-tabs").toggle(); // Toggle the tabs
    }
);

// 展示tabls
$(document).on("click", ".content-box ul.content-box-tabs li a", function() {
    $(this).parent().siblings().find("a").removeClass('current'); // Remove "current" class from all tabs
    $(this).addClass('current'); // Add class "current" to clicked tab
    var currentTab = $(this).attr('href'); // Set variable "currentTab" to the value of href of clicked tab
    $(currentTab).siblings().hide(); // Hide all content divs
    $(currentTab).show(); // Show the content div with the id equal to the id of clicked tab
    return false;
});
//关闭提示按钮
$(document).on('click', '.close', function() {
    $(this).parent().fadeTo(400, 0, function() { // Links with the class "close" will close parent
        $(this).slideUp(400);
    });
    return false;
});
// 全选按钮
$(document).on("click", ".check-all", function() {
    $(this).parent().parent().parent().parent().find("input[type='checkbox']").prop('checked', $(this).is(':checked'));
});
/*整一小段函数式编程  好久没写了。。可耻%>_<% byzhijia*/
window.ui = {
    waiting: function() {
        $.dialog({
            title: '系统提示',
            lock: true,
            title: '系统提示',
            background: '#000',
            /* 背景色 */
            opacity: 0.5,
            /* 透明度 */
            content: '系统处理中，请稍后...',
            icon: 'loading.gif',
            id: 'waitdialog',
            drag: false,
            resize: false,
            cancel: function() {
                //location.reload();
                this.reload();
            }
        });
    },
    hidewaiting: function() {
        $.dialog({
            id: 'waitdialog'
        }).hide();
    },
    //失败的时候确定去刷新页面
    errorDialog: function(content) {
        /*$.dialog({
            title: '系统提示',
            content: content,
            zIndex: 2000,
            icon: 'face-sad.png',
            ok: function() {
                //return false;
                this.reload();
            },
            cancel: true
        });*/
        jError(content, {
            HorizontalPosition: 'center',
            VerticalPosition: 'center',
            onClosed: function() {
                if (callback) {
                    callback();
                }
            }
        });
    },
    notifyDialog: function(content, callback) {
        jNotify(content, {
            HorizontalPosition: 'center',
            VerticalPosition: 'center',
            onClosed: function() {
                if (callback) {
                    callback();
                    //this.reload();调用dialog父窗口会Reload
                };
            }
        });
    },
    succesDialog: function(content, callback) {
        /*$.dialog({
            title: '系统提示',
            zIndex: 2000,
            content: content,
            icon: 'face-smile.png',
            cancelVal: '确认',
            cancel: function() {
                if (callback) {
                    callback();
                    //this.reload();调用dialog父窗口会Reload
                };
            }
        });*/
        jSuccess(content, {
            HorizontalPosition: 'center',
            VerticalPosition: 'center',
            onClosed: function() {
                if (callback) {
                    callback();
                    //this.reload();调用dialog父窗口会Reload
                };
            }
            /*,
            autoHide: false, // added in v2.0
            clickOverlay: true, // added in v2.0  
            onCompleted: function() { // added in v2.0
                alert('onCompleted');
            }*/
        });
    },
    getSelect: function(conid) {
        var checkboxs = $('#' + conid + " table tbody input:checkbox:checked"),
            result = [];
        if (checkboxs.length == 0) {
            $.dialog.alert('请先通过记录左侧复选框<br/>
                选择要导出的数据，或点击全部导出！');
            return false;
        } else {
            $.each(checkboxs, function() {
                if ($(this).attr('data-id')) {
                    result.push($(this).attr('data-id'));
                }
            });
            return result.join(',');
        }
    },
    /*load页面*/
    loadpage: function(pageinfo) {
        ui.waiting();
        var _url = pageinfo.url,
            _conid = pageinfo.conid; //要渲染的容器ID
        $.ajax({
            url: _url,
            success: function(html) {
                ui.hidewaiting();
                if (pageinfo.father) {
                    $('#' + _conid, parent.document).html(html);
                } else {
                    $('#' + _conid).html(html);
                }
                if (!pageinfo.index) {
                    //$.dialog.tips('系统传送数据完成！');
                    jNotify('系统数据已自动更新完毕！');
                };
            },
            error: function() {
                ui.hidewaiting();
                ui.errorDialog('数据加载失败,点击确定可重新加载！');
            }
        });
    },
    //获取chosen多选框选中的数据
    getchosenSelect: function(id) {
        var res = [];
        $('#' + id + '_chosen .chosen-choices li span').each(function() {
            res.push($(this).html());
        });
        if (res.length == 0) {
            res = false;
        };
        return res;
    },
    //获取chosen多选框选中的数据
    getchosensingleSelect: function(id) {
        var $select = $('#' + id + '_chosen .chosen-single  span').html();
        if (!$select || $select == "请选择") {
            $select = false;
        };
        return $select;
    }
};
//每一行表格都有详情数据 
$(document).on("click", ".detail", function() {
    var info = JSON.parse($(this).attr('data-detailinfo'));
    _title = $(this).attr('title'),
    _url = info.page,
    _id = info.id;
    $.dialog({
        title: _title,
        width: '700px',
        height: '350px',
        content: 'url:index.php?r=' + _url + '&id=' + _id
    });
    return false;
});
//每一行表格都有删除数据 
$(document).on("click", ".delete", function() {
    var info = JSON.parse($(this).attr('data-deleteinfo'));
    _url = info.page,
    _channelid = info.channelid,
    _id = info.id;
    $.dialog.confirm('您确定要删除这条数据么？', function() {
        ui.waiting();
        $.ajax({
            type: "POST",
            url: "index.php?r=" + _url,
            data: {
                datas: _id
            },
            dataType: "json",
            success: function(data) {
                ui.hidewaiting();
                if (data.success) {
                    ui.succesDialog(data.message, function() {
                        // location.reload();
                        listener.trigger(_channelid, 'success', 'delete');
                    });
                } else {
                    ui.errorDialog(data.message);
                }
            },
            error: function() {
                ui.hidewaiting();
                ui.errorDialog('删除数据失败，点击确认可以刷新页面！');
            }
        });
    }, function() {
        //$.dialog.tips('执行取消操作');
    });
    return false;
});
//全选删除数据
$(document).on("click", ".deleteall", function() {
    var info = JSON.parse($(this).attr('data-deleteinfo')),
        _ids = ui.getSelect(info.conid),
        _channelid = info.channelid,
        _url = info.page;
    if (!_ids) {
        return;
    };

    $.dialog.confirm('您确定要删除选中的这些数据么？', function() {
        ui.waiting();
        $.ajax({
            type: "POST",
            url: "index.php?r=" + _url,
            data: {
                datas: _ids
            },
            dataType: "json",
            success: function(data) {
                ui.hidewaiting();
                if (data.success) {
                    ui.succesDialog(data.message, function() {
                        // location.reload();
                        listener.trigger(_channelid, 'success', 'delete');
                    });
                } else {
                    ui.errorDialog(data.message);
                }
            },
            error: function() {
                ui.hidewaiting();
                ui.errorDialog('删除数据失败，点击确认可以刷新页面！');
            }
        });
    }, function() {
        //$.dialog.tips('执行取消操作');
    });
    return false;
});
//全选删除数据
$(document).on("click", ".exportexcel", function() {
    var info = JSON.parse($(this).attr('data-excelinfo')),
        _ids = ui.getSelect(info.conid),
        _url = info.page;
    if (!_ids) {
        return;
    };
    $.dialog.confirm('您确定要导出选中的这些数据到excel么？', function() {
            location.href = "index.php?r=" + _url + "&ids=" + _ids
        },
        function() {
            jNotify('您可以重新要导出到EXCEL的数据了！');
        });
    return false;
});

//每一行表格都有编辑数据
$(document).on("click", ".edit", function() {
    var info = JSON.parse($(this).attr('data-editinfo'));
    _title = $(this).attr('title'),
    _url = info.page,
    _id = info.id;
    $.dialog({
        title: _title,
        width: '700px',
        height: '350px',
        content: 'url:index.php?r=' + _url + '&id=' + _id
    });
    return false;
});
//Ajax同步提交代理
$(document).on("click", "input[type=submit]", function() {
    var $form = $($(this)[0].form),
        $submitbtn = $(this),
        _action = $form.attr('action'),
        _serialize = $form.serialize();
    ui.waiting();
    $.ajax({
        cache: true,
        type: "POST",
        dataType: "json",
        url: _action,
        data: _serialize,
        //async: false,
        success: function(data) {
            ui.hidewaiting();
            //var res = JSON.parse(data);
            var res = data;
            if (res.success) {
                ui.succesDialog(res.message, function() {
                    var ftype = $submitbtn.attr('data-formtype'),
                        chanelname = $form.attr('id'),
                        isneedRefresh = $form.attr('data-isneedrefresh'); //不需要无刷展示页的
                    if (ftype == "jump") {
                        listener.trigger(chanelname, 'jump', ftype);
                        return;
                    };
                    if (isneedRefresh == "need") {
                        listener.trigger(chanelname, 'success', ftype);
                    }
                });
            } else {
                ui.errorDialog(res.message);
            }
        },
        error: function(request) {
            ui.hidewaiting();
            ui.errorDialog('数据提交失败，您可以点击确认刷新或者直接关闭重试！');
        }
    });
    return false;
});
//分页代理
$(document).on("click", ".pagination a", function() {
    ui.waiting();
    var _url = $(this).attr('href');
    if (!_url) {
        return;
    };
    var _conid = $(this).parent().attr('data-conid'); //要渲染的容器ID
    window.history.pushState({}, document.title, _url);
    $.ajax({
        url: _url,
        success: function(html) {
            ui.hidewaiting();
            $('#' + _conid).html(html);
            //$.dialog.tips('系统传送数据完成！');
            jNotify('系统数据加载成功');
        },
        error: function() {
            ui.hidewaiting();
            ui.errorDialog('数据加载失败，请点击确认刷新重试！');
        }
    });
    return false;
});
//});