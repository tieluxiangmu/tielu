/**
 * @file 重庆市铁路局安全信息管理系统静态资源 全站配置
 */
var WEBFIS_CONFIG = {
    deploy: {
        receiver: 'http://127.0.0.1/web/receiver.php',
        root: 'D:xampp/htdocs'
    },
    roadmap: {
        domain: {
            test: "/web",
            online: "http://www.xxx.net/"
        }
    }
};
//上传到一个 remote测试机
fis.config.set('deploy', {
    //使用fis release --dest static来使用这个配置
    remote: [{
        //如果配置了receiver，fis会把文件逐个post到接收端上
        receiver: WEBFIS_CONFIG.deploy.receiver,
        //从产出的结果的static目录下找文件
        from: '/static ',
        //上传目录从template下一级开始不包括static目录
        subOnly: true,
        //保存到远端机器的/protected/views/tpl目录下
        //这个参数会跟随post请求一起发送
        to: WEBFIS_CONFIG.deploy.root + '/web/static',
        //某些后缀的文件不进行上传
        exclude: /.*\.(?:svn|cvs|tar|rar|psd).*/
    }, {
        receiver: WEBFIS_CONFIG.deploy.receiver,
        from: '/config',
        subOnly: true,
        to: WEBFIS_CONFIG.deploy.root + '/web/protected/extensions/smarty/configs',
        exclude: /.*\.(?:svn|cvs|tar|rar|psd).*/
    }, {
        receiver: WEBFIS_CONFIG.deploy.receiver,
        from: '/plugin',
        subOnly: true,
        to: WEBFIS_CONFIG.deploy.root + '/web/protected/extensions/smarty/plugins',
        exclude: /.*\.(?:svn|cvs|tar|rar|psd).*/
    }, {
        receiver: WEBFIS_CONFIG.deploy.receiver,
        from: '/template',
        subOnly: true,
        to: WEBFIS_CONFIG.deploy.root + '/web/protected/views/tpl/templates',
        exclude: /.*\.(?:svn|cvs|tar|rar|psd).*/
    }]
});
fis.config.set('settings.optimizer.html-compress', {
    'level': 'strip' //设置模版的压缩级别
});
module.exports = WEBFIS_CONFIG;