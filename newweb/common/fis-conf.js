var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'common',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/common_libs.css': [
            'static/css/**.css',
            'widget/**.css'
        ],
        'static/pkg/commonjs_libs.js': [
            //'static/js/libs/**.js',
            'widget/**.js'
        ]
    }
});