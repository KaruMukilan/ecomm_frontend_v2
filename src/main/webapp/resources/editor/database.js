/*	
	//The Right Code for retriving the dom data
 $(document).ready(function() {
	 var table = $('#categoryTable').DataTable({
			"sAjaxSource": "category",
			"sAjaxDataProp": "",
			"order": [[ 0, "asc" ]],
			"aoColumns": [
			    { "mData": "id"},
		        { "mData": "name" },
			]
	 });
} );*/

/*var editor; // use a global for the submit and return data rendering in the examples
 
$(document).ready(function() {
    editor = new $.fn.dataTable.Editor( {
        ajax: "category",
        table: "#categoryTable",
        fields: [ {
                label: "Id:",
                name: "id"
            }, {
                label: "Name:",
                name: "name"
            }
        ]
    } );
 
    $('#categoryTable').DataTable( {
        dom: "Bfrtip",
        ajax: "category",
        columns: [
            { data: "id" },
            { data: "name" },
        ],
        select: true,
        buttons: [
            { extend: "create", editor: editor },
            { extend: "edit",   editor: editor },
            { extend: "remove", editor: editor }
        ]
    } );
} );*/
 $(document).ready(function() {
    $('#categoryTable').DataTable({
        processing: true,
        serverSide: true,
        ajax: 'category',
        columns: [
            {data: 'id', name: 'id'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'action', name: 'action', orderable: false, searchable: false}
        ]
    });
 });