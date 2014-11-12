<style type="text/css">
    #user-info-form label{
        display: inline-block;
        width:120px;
        text-align: right;
        margin-right: 20px;
    }
</style>
<div class='content-box'>
    <form id="user-info-form" action="/web/index.php?r=userinfo/create" enctype="multipart/form-data" method="post">
        
        <p>
            <label class="spantitle" for="UserInfo_name" class="required ">姓名： <span class="required">*</span></label> 
                <input class="text-input small-input" size="30" maxlength="30" name="UserInfo[name]" id="UserInfo_name" type="text" />         
        </p>
        <p>
            <label class="spantitle" for="UserInfo_password" class="required">密码： <span class="required">*</span></label>      <input class="text-input small-input" size="60" maxlength="100" name="UserInfo[password]" id="UserInfo_password" type="password" />            
        </p>

        <p>
            <label class="spantitle" for="UserInfo_departmenttype" class="required">单位类型： <span class="required">*</span></label> 
            <span>{%$departmentType.name%}</span>
            <input class="text-input small-input"  name="UserInfo[departmenttype]" value="{%$departmentType.name%}" id="UserInfo_departmenttype" type="hidden" />
        </p>
        

        <p>
            <label class="spantitle" for="UserInfo_department" class="required">单位名称： <span class="required">*</span></label>
            <span>{%$department.name%}</span>

            <input class="text-input small-input"  name="UserInfo[department]" value="{%$department.name%}" id="UserInfo_department" type="hidden" />
        </p>
        
        <p>
            <label class="spantitle" for="UserInfo_parentDanwei">上级单位：</label> 
            <span>{%$parentDepartment.name%}</span>

            <input class="text-input small-input" name="UserInfo[parentDanwei]" id="UserInfo_parentDanwei" type="hidden"  value="{%$parentDepartment.name%}"/>
        </p>
        
        <p>
            <label class="spantitle" for="UserInfo_positionType" id="UserInfo_positionType">职务类型：</label>  
            <select name="UserInfo[positionType]" id="UserInfo_positionType">
                <option value="主管">主管</option>
                <option value="书记">书记</option>
                <option value="职员">职员</option>
            </select>
        </p>

        <p>
            <label class="spantitle" for="UserInfo_position" class="required">职务名称： <span class="required">*</span></label> 
            <input class="text-input small-input" size="50" maxlength="50" name="UserInfo[position]" id="UserInfo_position" type="text" />
        </p>

        <p>
            <label class="spantitle" for="UserInfo_mobile">电话：</label>     <input class="text-input small-input" size="11" maxlength="11" name="UserInfo[mobile]" id="UserInfo_mobile" type="text" />         </p>

        <p>
            <label class="spantitle" for="UserInfo_tel">办公电话：</label>      <input class="text-input small-input" size="13" maxlength="13" name="UserInfo[tel]" id="UserInfo_tel" type="text" />
        </p>

        <p>
            <label class="spantitle" for="UserInfo_photo">照片：</label>
            <!-- <input class="text-input small-input" size="60" maxlength="200" name="UserInfo[photo]" id="UserInfo_photo" type="text" /> -->
            <input type="file" name="photo" class="input w-100">
        </p>


        <p>
            <label class="spantitle" for="UserInfo_parentLeader">上级领导：</label>     <input class="text-input small-input" name="UserInfo[parentLeader]" id="UserInfo_parentLeader" type="text" />          </p>

        <p>
            <label class="spantitle" for="UserInfo_xiesi">是否有写实任务：</label>
            <input name="UserInfo[xiesi]"  type="checkbox" value="1" /> 是           
                  
        </p>

        <p>
            <label class="spantitle" for="UserInfo_zhoucha">昼查：</label>        <input class="text-input small-input" name="UserInfo[zhoucha]" id="UserInfo_zhoucha" type="text" />            </p>

        <p>
            <label class="spantitle" for="UserInfo_yecha">夜查：</label>      <input class="text-input small-input" name="UserInfo[yecha]" id="UserInfo_yecha" type="text" />            </p>

        <p>
            <label class="spantitle" for="UserInfo_tiancheng">添乘：</label>      <input class="text-input small-input" name="UserInfo[tiancheng]" id="UserInfo_tiancheng" type="text" />        
        </p>

        <p>
            <label class="spantitle" for="UserInfo_jiancha">检查四五等站：</label>        <input class="text-input small-input" name="UserInfo[jiancha]" id="UserInfo_jiancha" type="text" />            </p>

        <p>
            <label class="spantitle" for="UserInfo_tongzhi">安全通知书发放：</label>       <input class="text-input small-input" name="UserInfo[tongzhi]" id="UserInfo_tongzhi" type="text" />            </p>

        <p>
            <label class="spantitle" for="UserInfo_faxianwenti">发现问题：</label>      <input class="text-input small-input" name="UserInfo[faxianwenti]" id="UserInfo_faxianwenti" type="text" />            </p>

        <p>
            <label class="spantitle" for="UserInfo_liangwei">两违查处：</label>
            <input class="text-input small-input" name="UserInfo[liangwei]" id="UserInfo_liangwei" type="text" />

        </p>

        <p>
            <label class="spantitle" for="UserInfo_anquan">安全风险：</label>       <input class="text-input small-input" name="UserInfo[anquan]" id="UserInfo_anquan" type="text" />          </p>

        <p>
            <label class="spantitle" for="UserInfo_email">邮箱：</label>      <input class="text-input small-input" size="30" maxlength="30" name="UserInfo[email]" id="UserInfo_email" type="text" />           </p>

        <div class="btn-container" style="text-align:center;margin-bottom:20px;">
            <input type="button" class="btn btn-primary" id="saveUser" name="yt0" value="添加" />  
         </div>

    </form>
</div>
{%script%}
    require("adduser.js").init();
{%/script%}