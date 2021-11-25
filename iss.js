function myFunction() {
	console.log("here"); //afisare obj
	//req http ajax
	$.get("https://api.wheretheiss.at/v1/satellites/25544", function(data, status){
        //alert("Data: " + data + "\nStatus: " + status);
		console.log(data); //afisare obj
		$('#name').html(data.name);
		$('#latitude').html(data.latitude);
		$('#longitude').html(data.longitude);
		$('#altitude').html(data.altitude);
		$('#velocity').html(data.velocity+" "+data.units);
    });
    
}

setInterval(myFunction, 5000);

