<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Document Brochure</li>
			</ul>
		</div>
		<h3 class="page-title">Upload Brochure</h3>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Brochure</h3>
				<div class="box-tools pull-right">
					<button class="btn btn-box-tool" data-widget="collapse">
						<i class="fa fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
					<div class="form-group">
						<input type="file" class="inputfile form-control" id="uploadfile" placeholder="Upload File"  name="uploadfile"
						accept="application/pdf,application/msword, .doc, .docx"></input>
						<label for="file">Upload File:</label>
					</div>
					<button type="submit" class="btn btn-default" id="btnSubmit">Upload</button>
				</form>
					<div><span>${message}</span></div>
			</div>
		</div>
	</div>
</div>