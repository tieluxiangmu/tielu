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
                     <input type="number" type="text" class="text-input textarea wysiwyg" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults" value="{%$model['processingresults']%}" />
                  </td>
                </tr>
                <tr>
                  <td>违章类别</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory">
                        <option selected="selected" value="">请选择违章类别</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                    </select>
                  </td>
                  <td>责任人扣分</td>
                  <td><input  class="text-input small-input"  type="number" name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" value="{%$model['deduction']%}" /></td>
                </tr>
                 <tr>
                  <td>所在生产小组长（值班员）</td>
                  <td>           
                     <input type="text" class="text-input" name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader" value="{%$model['productionleader']%}" />
                  </td>
                  <td>扣积分情况</td>
                  <td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" value="{%$model['buckleintegral']%}" /></td>
                </tr>
                <tr>
                  <td>班组长</td>
                  <td colspan="">
                  <input  class="text-input small-input"  type="text" name="Twocontrarymanage[  teamleader]" id="Twocontrarymanage_ teamleader" value="{%$model['teamleader']%}" />
                  </td>
                  <td>扣积分情况</td>
                  <td colspan="">
                  <input  class="text-input small-input"  type="number" name="Twocontrarymanage[teamleaderIntegral]" id="Twocontrarymanage_teamleaderIntegral" value="{%$model['teamleaderIntegral']%}" />
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
require("editwocontrary.js").init();
{%/script%}

