  <style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#twocontrarymanage-form  .small-input{
    width: 90% !important;
}
  </style>
  <form id="twocontrarymanage-form" action="/web/index.php?r=twocontrarymanage/update&id={%$id%}" method="post" data-isneedrefresh="need">
        <table class="table table-bordered">
              <tbody>
                 <tr>
                  <td>违章内容</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Twocontrarymanage[Illegalcontent]" id="Twocontrarymanage_Illegalcontent" cols="79" rows="5">{%$model['Illegalcontent']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>处理结果</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults" cols="79" rows="5">{%$model['processingresults']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>违章类别</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory">
                        <option selected="selected" value="">请选择违章类别</option>
                        <option value="类别1">类别1</option>
                    </select>
                  </td>
                  <td>责任人扣分</td>
                  <td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" value="{%$model['deduction']%}" /></td>
                </tr>
                 <tr>
                  <td>所在生产小组长（值班员）</td>
                  <td>           
                      <select class="text-input small-input " name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"
                        <option selected="selected" value="">请选择所在生产小组长</option>
                        <option value="组长1">组长1</option>
                    </select>
                  </td>
                  <td>扣积分情况</td>
                  <td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" value="{%$model['buckleintegral']%}" /></td>
                </tr>
                <tr>
                  <td>（班组长）扣积分情况</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Twocontrarymanage[teamleaderIntegral]" id="Twocontrarymanage_teamleaderIntegral" cols="79" rows="5">{%$model['teamleaderIntegral']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" style="text-align: center !important;"> 
                            <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editwocontrary" value="确认修改"/>
                  </td>
                </tr>
              </tbody>
        </table>
</form>
{%script%}
$('#Twocontrarymanage_llegalcategory').find("option[value='{%$model['llegalcategory']%}']").attr("selected", "selected");
$('#Twocontrarymanage_productionleader').find("option[value='{%$model['productionleader']%}']").attr("selected", "selected");
require("editwocontrary.js").init();
{%/script%}

