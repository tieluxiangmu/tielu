<?php
require_once(Yii::getPathOfAlias('application.extensions.smarty').DIRECTORY_SEPARATOR.'Smarty.class.php');
define('SMARTY_VIEW_DIR', Yii::getPathOfAlias('application.views.tpl'));
define('SMARTY_SMARTY_DIR', Yii::getPathOfAlias('application.extensions.smarty'));
class CSmarty
{
    function __construct()
    {
        $this->_smarty = new Smarty();
        $this->_smarty->template_dir = SMARTY_VIEW_DIR.DS.'templates';
        $this->_smarty->compile_dir = SMARTY_VIEW_DIR.DS.'tpl_c';
        $this->_smarty->addPluginsDir(SMARTY_SMARTY_DIR.DS.'plugins');
        $this->_smarty->setConfigDir(SMARTY_SMARTY_DIR.DS.'configs');
        $this->_smarty->caching = false;  
        $this->_smarty->cache_dir = SMARTY_VIEW_DIR.DS.'cache';  
        $this->_smarty->left_delimiter  =  '{%';  
        $this->_smarty->right_delimiter =  '%}'; 
        $this->_smarty->cache_lifetime = 3600; 
        //$smarty->default_modifiers = array('$' => 'smarty:"nodefaults"');
    }

    function init(){
        Yii::registerAutoloader('smartyAutoload');
    }
}
?>