var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'cadrerealistic',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/cadrerealistic.css': [
            'widget/**.css'
        ],
        'static/pkg/cadrerealistic.js': [
            'widget/**.js'
        ]
    }
});