
// becuase turbolink we write this way

$(document).ready(function () { 
  $("#location_address").geocomplete();
  $("#address").geocomplete(); 

  $('#example').dataTable({
    responsive: true,
    autoWidth: true,
    "lengthMenu": [ 5, 10, 25, 50, 75, 100 ],
    "iDisplayLength": 5
   
  });

});