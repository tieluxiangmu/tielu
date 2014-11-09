var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'schedule',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/schedule.css': [
            'widget/**.css'
        ],
        'static/pkg/schedule.js': [
            'widget/**.js'
        ]
    }
});