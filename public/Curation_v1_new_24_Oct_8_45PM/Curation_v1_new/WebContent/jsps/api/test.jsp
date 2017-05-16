<html>
<body>

<script src="js/jquery-2.1.4.min.js"></script>
 <script>
 $(document).ready(function () {
	
	
	var settings = {
	  "async": true,
	  "crossDomain": true,
	  "url": "http://catalog-api-dev.elasticbeanstalk.com/auth/login",
	  "method": "GET",
	  "headers": {
		"cache-control": "no-cache"
		
	  }
	}

	$.ajax(settings).done(function (response) {
	token=response._token;
	  alert(JSON.stringify(token));
	  login(response._token);
	  console.log(response);
	});

 });
 function login(tk) {
 alert(tk);
		var settings1 = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/auth/login",
  "method": "POST",
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "1ae43214-98d0-d190-2d1c-8c7da0ed3745",
    "content-type": "application/x-www-form-urlencoded"
  },
  "data": {
    "email": "cartwright.jake@hotmail.com",
    "password": "test",
    "remember": "1",
    "_token": tk
  }
}

		$.ajax(settings1).done(function (response) {
			
			callobject(tk);
			//addcatalog(tk);
			//console.log(response);
		});

		

    }
	
function callobject(tk) {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/objects",
  "method": "GET",
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "7f6412cc-304f-ed22-29eb-9a323c3b7c2a",
	"_token":tk
	
  }
  
}

$.ajax(settings).done(function (response) {
  //console.log(response);
  var dt = response.content;
var i;
alert(dt[0].id);
$("#9lessonsLinks").html("");
    for(i=0; i<dt.length; i++)
    {
	var div_data ="<tr><td><a href='#' class='product'><span class='product-img'><img alt='' src='images/8.png' width='50'></span>";
	div_data = div_data + "<ul class='list-unstyled'><li><span class='product-name'>"+dt[i].name+"</span></li><li><span class='product-cat'>Promo AD</span></li></ul></a></td>";
	div_data = div_data + "<td><a href='#' class='profile'><span class='profile-img'><img alt='' src='images/avatar3_small.jpg' width='50'></span>";
	
	div_data = div_data + "<ul class='list-unstyled'><li><span class='profile-name'>Jimmy Hopkins</span></li><li><span class='profile-cat'>Curator</span></li></ul></a></td>";
div_data = div_data + "<td><button class='btn btn-white pull-right btn-lg'>&nbsp;&nbsp;&nbsp;<i class='fafa-pencil'></i>&nbsp;&nbsp;Edit&nbsp;&nbsp;&nbsp;&nbsp;</button></td></tr>";

$(div_data).appendTo("#9lessonsLinks");
	
        
    }
});
}

function addcatalog(tk) {
var cat_name = "name";
var title = "title";
	var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs?name="+cat_name+"&title="+title+"&_token="+tk,
  "method": "POST",
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "893eea22-8ae0-aa4a-fdf3-eddf236a603f",
    "content-type": "application/x-www-form-urlencoded"
  }
 
}

$.ajax(settings).done(function (response) {
  console.log(response);
  getcatalogs(tk);
});

}

function getcatalogs(tk) {
		var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://catalog-api-dev.elasticbeanstalk.com/catalogs",
  "method": "GET",
  "headers": {
    "cache-control": "no-cache",
    "postman-token": "7f6412cc-304f-ed22-29eb-9a323c3b7c2a",
	"_token":tk
	
  }
  }
  
$.ajax(settings).done(function (response) {
  console.log(response);
  alert(JSON.stringify(response));
});
  
}




    
    </script>
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
	</body>

</html>