var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'workinfo',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/index.css': [
            'widget/**.css'
        ],
        'static/pkg/index.js': [
            'widget/**.js'
        ]
    }
});