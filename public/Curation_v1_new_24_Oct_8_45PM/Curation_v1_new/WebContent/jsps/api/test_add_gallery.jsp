<html>
<body>

<script src="js/jquery-2.1.4.min.js"></script>
 <script>
    var tk = "";
 var catalogid = "";
    $( document ).ready( function() {
	
    	$.ajax( {
	    	type: 'GET',
	        url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	        xhrFields: {
        		withCredentials: true
    		},
	    } ).done( function( response ) {
	            if ( response && response._token )
	            	$( 'input[name="_token"]' ).val( response._token );

	            	console.log( $( 'input[name="_token"]' ).val() );
	            	tk = response._token;
	    } );

    	$( '#dologin' ).click( function() {
        	$.ajax( {
	            type: 'POST',
	            url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	            xhrFields: {
			        withCredentials: true
			    },
	            data: {
	            	email: 'cartwright.jake@hotmail.com',
	            	password: 'test',
	            	_token: $( 'input[name="_token"]' ).val()
	            }
	        } ).done( function( response ) {
	            console.log( response ); 
	            tk = response._token;
	
	        } );
    	} );
    } );
</script>
 
 <script>
 
 
 
 function getcatalogid(tk) {
	 alert("inside catalogid : "+tk);
			var settings1 = {
		  "async": true,
		  "crossDomain": true,
		  "url": "http://catalog-api-dev.elasticbeanstalk.com/search/catalogs",
		  "method": "POST",
		  "xhrFields": {
			        "withCredentials": true
			    },
		  "headers": {
			"cache-control": "no-cache",
			"postman-token": "1ae43214-98d0-d190-2d1c-8c7da0ed3745",
			"content-type": "application/x-www-form-urlencoded"
		  }
		  
		  }
		  $.ajax(settings1).done(function (response) {
			alert("inside");
			alert(JSON.stringify(response.content));
			console.log(JSON.stringify(response.content));
			var dt = response.content;
			
			for(i=0; i<dt.length; i++)
				{
					alert("inside for");
					if(dt[i]._token == tk)
					{
						alert("inside if");
						catalogid=dt[i].catalog_id;
							alert("id ==> " + catalogid);
					}
				}
		  });
  
	}
		

function addcatalog() {
alert("add catalog :: "+tk);

var cat_name = "name";
var title = "title";
	var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs?name="+cat_name+"&title="+title+"&_token="+tk,
  "method": "POST",
  "xhrFields": {
			        "withCredentials": true
			    },
   "headers": {
    "cache-control": "no-cache",
    "postman-token": "893eea22-8ae0-aa4a-fdf3-eddf236a603f",
    "content-type": "application/x-www-form-urlencoded"
  }
 
}

window.myCallback = function(data) {
  alert(JSON.stringify(data));
};


$.ajax(settings).done(function (response) {
  console.log(response);
 
 getcatalogid(tk);
 //console.log(catalogid);
});

$.ajax(settings).fail(function (jqXHR, textStatus,response) {
   alert( "Request failed: " + textStatus + " response " + response);
});

}

 function getcatalogs() {
		
		alert("view catalog  :: "+tk);
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "GET",
  "xhrFields": {
			        "withCredentials": true
			    },
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "7f6412cc-304f-ed22-29eb-9a323c3b7c2a",
	"_token":tk
	
  }
  }
  
$.ajax(settings).done(function (response) {
  console.log(response);
  alert("View catalog : "+JSON.stringify(response));
});
  
} 




    
    </script>

<button onclick="addcatalog()"> add catalog</button>

<button onclick="getcatalogs()"> View Catalog</button>
<!--
	<table id="9lessonsLinks">
	 <tr>
                                                <td>
                                                    <a href='#' class='product'>
                                                        <span class='product-img'>
                                                            <img alt='' src='images/8.png' width='50'>
                                                        </span>
                                                        <ul class='list-unstyled'>
                                                            <li><span class='product-name'>winter is coming</span></li>
                                                            <li><span class='product-cat'>Promo AD</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href='#' class='profile'>
                                                        <span class='profile-img'>
                                                            <img alt='' src='images/avatar3_small.jpg' width='50'>
                                                        </span>
                                                        <ul class='list-unstyled'>
                                                            <li><span class='profile-name'>Jimmy Hopkins</span></li>
                                                            <li><span class='profile-cat'>Curator</span></li>
                                                        </ul>
                                                    </a>
                                                </td>
                                                <td>
                                                    <button class='btn btn-white pull-right btn-lg'>&nbsp;&nbsp;&nbsp;<i class='fa fa-pencil'></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                </td>
                                            </tr>
	</table>
-->
<button type="button" id="dologin">Do Login</button>
<input type="hidden" name="_token" value="">
	</body>

</html>
