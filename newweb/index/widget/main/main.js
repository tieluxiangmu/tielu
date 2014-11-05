// var main = main || {};
// main = {
//     init: function() {
//         // 初始化绑定元素以及事件
//         var me = this;
//         me.render();
//         me.bind();
//     },
//     render: function() {
//         var me = this;
//         me.mainCon = $('#js-div-main'); //首页九宫格菜单
//     },
//     bind: function() {
//         var me = this;
//         // (me.cadrerealisticBtn).on('click', $.proxy(me._cadrerealisticEvent, this));
//         $(document).on("click", ".js-action", function() {
//             var $btn = $(this),
//                 $bigpipeid = $btn.attr('data-bigpipeid'),
//                 $actionfn = $btn.attr('data-fn');
//             eval($('#' + $bigpipeid + ' .g_fis_bigrender').html());
//             $('#' + $bigpipeid).slideDown(400);
//             me[$actionfn]($btn);
//         });
//     },
//     _cadrerealisticEvent: function($btn) {
//         var $left = $('#' + $btn.attr('data-leftconid'));
//         $left.show(100);
//         $('#js-div-main').slideUp(400);
//     },
//     _redirectEvent: function($btn) {
//         var $from = $('#' + $btn.attr('data-from'));
//         $from.slideUp(400);
//     }
// }
// module.exports = main;