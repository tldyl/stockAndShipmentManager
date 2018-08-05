$(document).ready(function(){
  $('#myTable').DataTable();
  $('#myTable').dataTable( {
    "ajax": {
      "url": "data.json",
      "dataSrc": "tableData"
    }
  } );
});