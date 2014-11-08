var WEBFIS_CONFIG = require("../fisconfig.js");
fis.config.merge({
    namespace: 'cadreexamine',
    roadmap: {
        //cdn配置
        domain: WEBFIS_CONFIG.roadmap.domain.test
    },
    pack: {
        'static/pkg/cadreexamine.css': [
            'widget/**.css'
        ],
        'static/pkg/cadreexamine.js': [
            'widget/**.js'
        ]
    }
});