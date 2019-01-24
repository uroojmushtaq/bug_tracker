function myfunction(){
	var selectBox = document.getElementById("bug_bug_type");
    var selectedValue = selectBox.options[selectBox.selectedIndex].text;
    //alert(selectedValue);

    if(selectedValue == 'Bug'){
    	//$('#bug_status option[value="knownValue"]').text('New Option Text');

		$('#bug_status').append('<option value="New" selected="selected">New</option>');
		$('#bug_status').append('<option value="Started" selected="selected">Started</option>');
		$('#bug_status').append('<option value="Resolved" selected="selected">Resolved</option>');

    	// $("#bug_status").val("Started");
    	// $("#bug_status").val("Resolved");
    }else{
    	$('#bug_status').append('<option value="New" selected="selected">New</option>');
		$('#bug_status').append('<option value="Started" selected="selected">Started</option>');
		$('#bug_status').append('<option value="Completed" selected="selected">Completed</option>');
    }



    
}



// document.getElementById("bug_bug_type").onchange = function() {
//   var selectBox = document.getElementById("bug_bug_type");
//      var selectedValue = selectBox.options[selectBox.selectedIndex].value;
//     alert(selectedValue);
// };


