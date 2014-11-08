var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'contact',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/contact.css': [
            'widget/**.css'
        ],
        'static/pkg/contact.js': [
            'widget/**.js'
        ]
    }
});