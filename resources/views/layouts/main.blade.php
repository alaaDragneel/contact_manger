<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
	{{-- nav bar  --}}
	 <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	    <div class="container">
	      <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand text-uppercase" href="#">My Contact</a>
	      </div>

	      <!-- Collect the nav links, forms, and other content for toggling -->
	     <div class="collapse navbar-collapse" id="navbar-collapse">
	        	<div class="nav navbar-right navbar-btn">
	          	<a href="#"><i class="glyphicon glyphicon-plus"></i> Add Contact</a>
			</div>
	     </div><!-- /.navbar-collapse -->
	    </div><!-- /.container-fluid -->
	</nav>

	{{-- container --}}
	<div class="container">
	  <div class="row">
	    <div class="col-md-3">
		    <div class="list-group">
		      <a class="list-group-item">All <span class="badge">10</span></a>
		      <a class="list-group-item">Family <span class="badge">10</span></a>
		      <a class="list-group-item">Friends <span class="badge">10</span></a>
		      <a class="list-group-item">Others <span class="badge">10</span></a>
		    </div>
	    </div>
	    <div class="col-md-9">
		    @yield('content')
	    </div>
	  </div>
	</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>
