function CMap() {
	
	this.map = null;
	
	
	this.addWindow = function(marker,content){
		var contentString = content;
        var infiwindow = new google.maps.InfoWindow({content:contentString});
        google.maps.event.addListener(marker,'mouseover',function(){infiwindow.open(this.map,marker);});
        google.maps.event.addListener(marker,'mouseout',function(){infiwindow.close(this.map,marker); });
		
	}
	
	this.create = function(div,lat,lng)
         {
           var latlng = new google.maps.LatLng(lat,lng);
           var opt =
             {
             center:latlng,
             zoom:10,
             mapTypeId: google.maps.MapTypeId.ROADMAP,
             disableAutoPan:false,
             navigationControl:true,
             navigationControlOptions: {style:google.maps.NavigationControlStyle.SMALL },
             mapTypeControl:true,
             mapTypeControlOptions: {style:google.maps.MapTypeControlStyle.DROPDOWN_MENU}
   			};
   		  this.map = new google.maps.Map(document.getElementById(div),opt);
		  
		}
		
	this.addMarker = function(lat,lng){
		 var marker = new google.maps.Marker({
												position: new google.maps.LatLng(lat,lng),
												title: '',
												clickable: true,
												map: this.map
											});
	    
		return marker;
	}
}