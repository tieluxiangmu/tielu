  <style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#realinvestigation-form.large-input{
    width: 300px !important;
}
#realinvestigation-form  .small-input{
    width: 200px !important;
}
  </style>
  <form id="realinvestigation-form" action="index.php?r=realinvestigation/Update&id={%$id%}" method="post" data-isneedrefresh="need">
        <table class="table table-bordered">
              <tbody>
                <tr>
                  <td class="spantitle">整改情况</td>
                  <td colspan="3"> <textarea name="Realinvestigation[rectification]" id="Realinvestigation_rectification" cols="79" rows="5">{%$model['rectification']%}</textarea></td>
                </tr>
                <tr>
                  <td class="spantitle">改进意见</td>
                  <td colspan="3"><textarea  cols="79" rows="5" name="Realinvestigation[improvement]" id="Realinvestigation_improvement">{%$model['improvement']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td class="spantitle">发现问题</td>
                  <td colspan="3">
                     <textarea  name="Realinvestigation[foundproblem]" id="Realinvestigation_foundproblem" name="textfield" cols="79" rows="5">{%$model['foundproblem']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td class="spantitle">两违类别/件数</td>
                  <td colspan="3">  <input name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"  class="text-input large-input" value="{%$model['categorynumber']%}"/></td>
                </tr>
              </tbody>
        </table>
        <div class="btn-container" style="margin-bottom:20px;">
           <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editcardreal" value="确认修改"/>
           <input type="button" style="margin-left:20px;" data-formtype="update" class="btn" id="js-btn-cancelcardreal" value="撤销修改"/>
        </div>
</form>
{%script%}
require("editcadrerealistic.js").init();
{%/script%}

