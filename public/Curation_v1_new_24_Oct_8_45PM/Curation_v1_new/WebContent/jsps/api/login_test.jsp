
<!DOCTYPE html>
<html>
<head>

<title>TEST</title>

</head>
<body>

<h1>Login test</h1>

<p>
	Login with: cartwright.jake@hotmail.com / test<br /><br />

	<button type="button" id="dologin">Do Login</button><button type="button" id="dologout">Do Logout</button>
</p>

<h3>response:</h3>
<div id="response">
</div>

<input type="hidden" name="_token" value="">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
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
	    } );

    	$( '#dologin' ).click( function() {
        	$.ajax( {
	            type: 'POST',
	            url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/login',
	            xhrFields: {
			        withCredentials: true
			    },
	            data: {
	            	email: 'dell@g.c',
	            	password: 'dell123',
	            	_token: $( 'input[name="_token"]' ).val()
	            }
	        } ).done( function( response ) {
	            console.log( response ); 
	            
	            $( '#response' ).html( JSON.stringify( response ) );
	        } );
    	} );
    	
    	$( '#dologout' ).click( function() {
        	$.ajax( {
	            type: 'GET',
	            url: 'http://catalog-api-dev.elasticbeanstalk.com/auth/logout',
	            xhrFields: {
			        withCredentials: true
			    }
	        } ).done( function( response ) {
	            console.log( response ); 
	            
	            $( '#response' ).html( JSON.stringify( response ) );
	        } );
    	} );
    } );
</script>
</body>
</html>
