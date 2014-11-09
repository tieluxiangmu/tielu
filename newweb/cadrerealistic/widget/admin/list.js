var userAdmin = {};
var zTree;


var setting = {
    view: {
        dblClickExpand: false,
        showLine: true,
        selectedMulti: false,
        nameIsHTML: true
    },
    data: {
        simpleData: {
            enable:true,
            idKey: "id",
            pIdKey: "parentId",
            rootPId: ""
        }
    },
    callback: {
        beforeClick: function(treeId, treeNode) {
            var zTree = $.fn.zTree.getZTreeObj("tree");
            if (treeNode.isParent) {
                zTree.expandNode(treeNode);
            } else {
               
            }
        }
    }
};


userAdmin = {
    init: function() {
       this.initZtree();
    },
    addUser: function(id) {
       $.dialog({
            title: '添加人员',
            width: '700px',
            height: '800px',
            content: 'url:index.php?r=userinfo/create&departmentid='+id
        }); 
    },
    initZtree: function() {
        $.ajax({
            url:'index.php?r=department/list',
            dataType:'json',
            success: function(json) {
                var tree = $('#userTree');
                var text = '';
                if(json && json.length) {
                    for(var i = 0, l = json.length; i < l; i++) {
                        text = '添加人员';
                        if(json[i].type != 1) {
                            json[i].name +='<button class="btn-adduser" onclick="userAdmin.addUser('+json[i].id+');">'+text+'</button>';
                        }
                    }
                }
                t = $.fn.zTree.init($('#userTree'), setting, json);
            }
        });
    }
};
module.exports = userAdmin;