// Bu dosyada dinamik form alanları oluşturulmak için çözüm üretilmiştir
// Daha önceden tanımlanmış form metni bir metod aracılığı ile 
let optionBuilder = ''
$.each($('option'), function(i, v){ optionBuilder += v.outerHTML })
let form = $("form")
let number= 1

var formcuk = function(no){
  return `
  <div style="border: 2px solid red">
      <p>
        <label for="acquisition_report_acquisition_analytics_attributes_${no}_pub_type">Pub type</label><br/>
        <select class="form-control form-control-sm" name="acquisition_report[acquisition_analytics_attributes][${no}][pub_type_id]" id="acquisition_report_acquisition_analytics_attributes_${no}_pub_type_id">${optionBuilder}</select><br/>      
  
      </p>
      <p>
        <label for="acquisition_report_acquisition_analytics_attributes_${no}_pub_arrived_as_supply">Pub arrived as supply</label><br/>
        <input class="form-control" type="number" name="acquisition_report[acquisition_analytics_attributes][${no}][pub_arrived_as_supply]" id="acquisition_report_acquisition_analytics_attributes_${no}_pub_arrived_as_supply" />
      </p>
      <p>
        <label for="acquisition_report_acquisition_analytics_attributes_${no}_pub_arrived_as_gift">Pub arrived as gift</label><br/>
        <input class="form-control" type="number" name="acquisition_report[acquisition_analytics_attributes][${no}][pub_arrived_as_gift]" id="acquisition_report_acquisition_analytics_attributes_${no}_pub_arrived_as_gift" />
      </p>
      <p>
         <input name="acquisition_report[acquisition_analytics_attributes][${no}][_destroy]" type="hidden" value="0" /><input class="form-check-input" type="checkbox" value="${no}" name="acquisition_report[acquisition_analytics_attributes][${no}][_destroy]" id="acquisition_report_acquisition_analytics_attributes_${no}__destroy" /> Delete this record
      </p>
  </div>
  `
}

$(document).ready(function(){
  $("#add_new_field").click(function(){
    //form.append(builded_form)
    form.append(formcuk(number));
    number += 1;
    console.log("No is: "+no);
  });
});