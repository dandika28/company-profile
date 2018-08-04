<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen" />

<link href="/assets/css/starter-template.css" rel="stylesheet" media="screen" />
<link href="/assets/css/datatables.min.css" rel="stylesheet" media="screen" />

<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="/assets/js/admin.js"></script>
<script src="/assets/js/datatables.min.js"></script>
<script src="/assets/js/fnSetFilteringEnterPress.js"></script>

</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Datatable Demo</a>
        </div>
        
      </div>
    </nav>

    <div class="container">

      <div class="starter-template">
      
      
			<div class="table-responsive">
		        <table id="paginatedTable" class="table table-striped">
		            <thead>
		                <tr>
		                    <th>Credit Memo #</th>
							<th>Bill To</th>
							<th>Created Date</th>
							<th>Status</th>
							<th>Actions</th>
		                </tr>
		            </thead>

		        </table>
		       </div>
      
      
      </div>

    </div><!-- /.container -->

</body>
</html>