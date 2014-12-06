<style type="text/css">
    #user-info-form label{
        display: inline-block;
        width:120px;
        text-align: right;
        margin-right: 20px;
    }
body{
    background: white !important;
    padding: 5px;
  }
</style>
<div class='content-box'>
    <form id="user-info-form" action="index.php?r=userinfo/update&id={%$smarty.request.id%}" method="post" enctype="multipart/form-data">
        <p>
            <label class="spantitle" for="UserInfo_name" class="required ">姓名： <span class="required">*</span></label> 
            <input class="text-input small-input" size="30" maxlength="30" name="UserInfo[name]" id="UserInfo_name" type="text" value="{%$model['name']%}"/>         
        </p>
        <p>
            <label class="spantitle" for="UserInfo_mobile">电话：</label>     <input class="text-input small-input" size="11" maxlength="11" name="UserInfo[mobile]" id="UserInfo_mobile" type="text" value="{%$model['mobile']%}"/>         </p>

        <p>
            <label class="spantitle" for="UserInfo_tel">办公电话：</label>      <input class="text-input small-input" size="13" maxlength="13" name="UserInfo[tel]" id="UserInfo_tel" type="text" value="{%$model['tel']%}"/>
        </p>

        <p>
            <label class="spantitle" for="UserInfo_photo">照片：</label>
            <input type="file" name="photo" class="input w-100">
        </p>


            <label class="spantitle" for="UserInfo_email">邮箱：</label>      <input class="text-input small-input" size="30" maxlength="30" name="UserInfo[email]" id="UserInfo_email" type="text" value="{%$model['email']%}"/>           
        </p>
        <div class="btn-container" style="text-align:center;margin-bottom:20px;">
            <input type="button" class="btn btn-primary" id="saveUser" name="yt0" value="确认修改" />  
         </div>

</form>
</div>
{%script%}
    require("edituser.js").init();
{%/script%}