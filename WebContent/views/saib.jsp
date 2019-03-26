<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>CodePlayer</title>
		<meta charset="utf-8">
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-widht, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="resources/reset.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/custom.css">
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  			
	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <img class="navbar-brand img-responsive" src="images/google-code-logo.png" alt="CodePlayer">
		    </div>
		    <div class="navbar-nav">
		    	<li class="btn-group center">
		      		<button class="btn navbar-btn toggle btn-success">HTML</button>
		      		<button class="btn navbar-btn toggle">CSS</button>
		      		<button class="btn navbar-btn toggle">JS</button>
		      		<button class="btn navbar-btn toggle btn-success">RESULT</button>
		    	</li>
		    	<ul class="nav navbar-nav navbar-right">
		    		<li><button id="btn-result" class="btn navbar-btn btn-warning">JS RUN</button><li>
		    	</ul>
		    </div>
		  </div>
		</nav>

		<div class="wrapper">
			  <div class="row">

			    <div class="col-sm-*">
					<div class="code-container HTML-container">
						<label class="label label-primary">HTML</label>
					 	<textarea id="htmlcontainer" placeholder="<-- HTML CODE HERE -->"></textarea>		
					</div>
			    </div>

			    <div class="col-sm-*">
					<div class="code-container CSS-container">
						<label class="label label-warning">CSS</label>
					 	<textarea id="csscontainer" placeholder="//CSS CODE HERE"></textarea>		
					</div>
			    </div>

			    <div class="col-sm-*">
					<div class="code-container JS-container">
						<label class="label label-danger">JS</label>
					 	<textarea id="jscontainer" placeholder="//JS CODE HERE"></textarea>		
					</div>
			    </div>

			    <div class="col-sm-*">
					<div class="code-container RESULT-container">
						<label class="label label-primary">RESULT</label>
					 	<iframe id="resultcontainer"></iframe>
					</div>
			    </div>
			  </div>
		</div>


		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
		<script type="text/javascript" src="resources/logic.js">

		</script>
	</body>
</html>	