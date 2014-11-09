<form id="user-info-form" action="/web/index.php?r=userinfo/create" method="post">
    
    <div class="row">
        <label for="UserInfo_name" class="required">姓名 <span class="required">*</span></label> 
            <input size="30" maxlength="30" name="UserInfo[name]" id="UserInfo_name" type="text" />         </div>
    <div class="row">
        <label for="UserInfo_password" class="required">密码 <span class="required">*</span></label>      <input size="60" maxlength="100" name="UserInfo[password]" id="UserInfo_password" type="password" />            </div>
    <div class="row">
        <label for="UserInfo_departmenttype" class="required">单位类型 <span class="required">*</span></label> 
        
        <select name="UserInfo[departmenttype]" id="UserInfo_departmenttype">
                {%foreach $departmentTypes as $type %}
                    <option value="{%$type->id%}">{%$type->name%}</option>
                {%/foreach%}
        </select> 
    </div>

    <div class="row">
        <label for="UserInfo_department" class="required">单位名称 <span class="required">*</span></label>      <input size="30" maxlength="30" name="UserInfo[department]" id="UserInfo_department" type="text" />         </div>

    <div class="row">
        <label for="UserInfo_position" class="required">职务名称 <span class="required">*</span></label>        <input size="50" maxlength="50" name="UserInfo[position]" id="UserInfo_position" type="text" />         </div>

    <div class="row">
        <label for="UserInfo_mobile">电话</label>     <input size="11" maxlength="11" name="UserInfo[mobile]" id="UserInfo_mobile" type="text" />         </div>

    <div class="row">
        <label for="UserInfo_tel">办公电话</label>      <input size="13" maxlength="13" name="UserInfo[tel]" id="UserInfo_tel" type="text" />           </div>

    <div class="row">
        <label for="UserInfo_photo">照片</label>      <input size="60" maxlength="200" name="UserInfo[photo]" id="UserInfo_photo" type="text" />          </div>

    <div class="row">
        <label for="UserInfo_positionType">职务类型</label>     <input size="6" maxlength="6" name="UserInfo[positionType]" id="UserInfo_positionType" type="text" />           </div>

    <div class="row">
        <label for="UserInfo_parentDanwei">上级单位</label>     <input name="UserInfo[parentDanwei]" id="UserInfo_parentDanwei" type="text" />          </div>

    <div class="row">
        <label for="UserInfo_parentLeader">上级领导</label>     <input name="UserInfo[parentLeader]" id="UserInfo_parentLeader" type="text" />          </div>

    <div class="row">
        <label for="UserInfo_xiesi">是否有写实任务</label>     <input name="UserInfo[xiesi]" id="UserInfo_xiesi" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_zhoucha">昼查</label>        <input name="UserInfo[zhoucha]" id="UserInfo_zhoucha" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_yecha">夜查</label>      <input name="UserInfo[yecha]" id="UserInfo_yecha" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_tiancheng">添乘</label>      <input name="UserInfo[tiancheng]" id="UserInfo_tiancheng" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_jiancha">检查四五等站</label>        <input name="UserInfo[jiancha]" id="UserInfo_jiancha" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_tongzhi">安全通知书发放</label>       <input name="UserInfo[tongzhi]" id="UserInfo_tongzhi" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_faxianwenti">发现问题</label>      <input name="UserInfo[faxianwenti]" id="UserInfo_faxianwenti" type="text" />            </div>

    <div class="row">
        <label for="UserInfo_liangwei">两违查处</label>     <input name="UserInfo[liangwei]" id="UserInfo_liangwei" type="text" />          </div>

    <div class="row">
        <label for="UserInfo_anquan">安全风险</label>       <input name="UserInfo[anquan]" id="UserInfo_anquan" type="text" />          </div>

    <div class="row">
        <label for="UserInfo_email">邮箱</label>      <input size="30" maxlength="30" name="UserInfo[email]" id="UserInfo_email" type="text" />           </div>

    <div class="row buttons">
        <input type="submit" name="yt0" value="Create" />   </div>

</form>