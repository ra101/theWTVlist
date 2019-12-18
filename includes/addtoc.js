/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function addtoc() {
	window.location.href+="&add=1";
}


function cantAdd() {
    alert("Thou shall Login first!");
	window.location = "./login.php"
}


function valueChange() {
	var sel = document.getElementById("mylist_info");
	switch(sel.value)
	{
		case 'watching':
		sel.style.color="green";
		window.location.href+="&listed=1";
		break;
		case "completed":
		window.location.href+="&listed=2";

		break;
		case "hold":
		window.location.href+="&listed=3";
		break;
		case "ptw":
		window.location.href+="&listed=4";
		break;
		case "dropped":
		window.location.href+="&listed=5";
		break;		
	}	
}

function scoreChange() {
	var sel = document.getElementById("myscore_info");
		window.location.href=window.location.href+"&scored="+sel.value;
}