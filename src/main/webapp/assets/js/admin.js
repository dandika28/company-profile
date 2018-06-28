	var table;

	$(document).ready(function() {
		table=$('#paginatedTable').DataTable( {
	        "processing": true,
	        "serverSide": true,
	        "pageLength": 5,
	        "ajax": {
	            "url": "/mikatama/dashboard/order/paginated",
	            "data": function ( data ) {
				 //process data before sent to server.
	         }},
	        "columns": [
	                    { "data": "id" },
	                    { "data": "name"},
	                    { "data": "created_date"},
	                    { "data": "status"},
	                    { data: null, className: "center", defaultContent : '<a href="#" class="editor_edit">Edit</a>'}
	                ],
	         "columnDefs" : [
	        	 		{ 	targets : [3],
	        	 			render : function (data, type, row){
	        	 				return data == '1' ? 'Paid' : 'Unpaid'
	        	 			} 
	        	 		}
	         ]
		});
		
		$('#paginatedTable').on('click', 'a.editor_edit', function(e){
			var dataArr = [];
			var dataId;
			var $this = $(this);
			//var	rows = $('tr.selected');
			var rws = $this.parents('tr');
			var rowData = table.rows(rws).data();
		    $.each($(rowData),function(key,value){
		        dataArr.push(value["name"]); //"name" being the value of your first column.
		        dataId = value["id"];
		    });
		    console.log(dataArr);
		    console.log(dataId);
		    window.location = "/mikatama/dashboard/order/edit?id="+dataId;
		});
		
		$('#paginatedTable').dataTable().fnSetFilteringEnterPress();
	});