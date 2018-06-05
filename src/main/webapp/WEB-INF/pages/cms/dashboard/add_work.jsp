<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-bar">
			<ul class="page-breadcrumb">
				<li><i class="fa fa-dashboard"></i> Overview</li>
				<li><i class="fa fa-angle-right"></i> Add Content Our Work</li>
			</ul>
		</div>
		<h3 class="page-title">How We Work</h3>
		<div class="row">
			<div class="col-lg-12">
				<div class="flexigrid crud-form box"
					data-unique-hash="557498587ea6b8410b019e39815af033">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-plus-circle fa-fw"></i> Add How We Work Content
						</h3>
					</div>

					<div id="main-table-box" class="box-body">
						<div class="col-lg-8">
							<form:form action="${contextPath}/content/ourwork/add"
								method="post" modelAttribute="contentHowWork"
								class="form-horizontal" autocomplete="off"
								enctype="multipart/form-data" accept-charset="utf-8">

								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Id Our Work Content<span class="required">*</span></label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="id"
											value="${id }" maxlength="50" type="text" readonly="true" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Title</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:input id="field-no_po" class="form-control" path="title"
											value="" maxlength="50" type="text" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Content</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:textarea id="elm1" name="elm1" rows="15" cols="60"
											path="content" />
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Icon</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="icon" class="form-control">
											<optgroup label="Web Application Icons">
												<option value="icon-asterisk">icon-asterisk</option>
												<option value="icon-ban-circle">icon-ban-circle</option>
												<option value="icon-bar-chart">icon-bar-chart</option>
												<option value="icon-barcode">icon-barcode</option>
												<option value="icon-beaker">icon-beaker</option>
												<option value="icon-beer">icon-beer</option>
												<option value="icon-bell">icon-bell</option>
												<option value="icon-bell-alt">icon-bell-alt</option>
												<option value="icon-bolt">icon-bolt</option>
												<option value="icon-book">icon-book</option>
												<option value="icon-bookmark">icon-bookmark</option>
												<option value="icon-bookmark-empty">icon-bookmark-empty</option>
												<option value="icon-briefcase">icon-briefcase</option>
												<option value="icon-bullhorn">icon-bullhorn</option>
												<option value="icon-calendar">icon-calendar</option>
												<option value="icon-camera">icon-camera</option>
												<option value="icon-camera-retro">icon-camera-retro</option>
												<option value="icon-certificate">icon-certificate</option>
												<option value="icon-check">icon-check</option>
												<option value="icon-check-empty">icon-check-empty</option>
												<option value="icon-circle">icon-circle</option>
												<option value="icon-circle-blank">icon-circle-blank</option>
												<option value="icon-cloud">icon-cloud</option>
												<option value="icon-cloud-download">icon-cloud-download</option>
												<option value="icon-cloud-upload">icon-cloud-upload</option>
												<option value="icon-coffee">icon-coffee</option>
												<option value="icon-cog">icon-cog</option>
												<option value="icon-cogs">icon-cogs</option>
												<option value="icon-comment">icon-comment</option>
												<option value="icon-comment-alt">icon-comment-alt</option>
												<option value="icon-comments">icon-comments</option>
												<option value="icon-comments-alt">icon-comments-alt</option>
												<option value="icon-credit-card">icon-credit-card</option>
												<option value="icon-dashboard">icon-dashboard</option>
												<option value="icon-desktop">icon-desktop</option>
												<option value="icon-download">icon-download</option>
												<option value="icon-download-alt">icon-download-alt</option>
												<option value="icon-edit">icon-edit</option>
												<option value="icon-envelope">icon-envelope</option>
												<option value="icon-envelope-alt">icon-envelope-alt</option>
												<option value="icon-exchange">icon-exchange</option>
												<option value="icon-exclamation-sign">icon-exclamation-sign</option>
												<option value="icon-external-link">icon-external-link</option>
												<option value="icon-eye-close">icon-eye-close</option>
												<option value="icon-eye-open">icon-eye-open</option>
												<option value="icon-facetime-video">icon-facetime-video</option>
												<option value="icon-fighter-jet">icon-fighter-jet</option>
												<option value="icon-film">icon-film</option>
												<option value="icon-filter">icon-filter</option>
												<option value="icon-fire">icon-fire</option>
												<option value="icon-flag">icon-flag</option>
												<option value="icon-folder-close">icon-folder-close</option>
												<option value="icon-folder-open">icon-folder-open</option>
												<option value="icon-folder-close-alt">icon-folder-close-alt</option>
												<option value="icon-folder-open-alt">icon-folder-open-alt</option>
												<option value="icon-food">icon-food</option>
												<option value="icon-gift">icon-gift</option>
												<option value="icon-glass">icon-glass</option>
												<option value="icon-globe">icon-globe</option>
												<option value="icon-group">icon-group</option>
												<option value="icon-hdd">icon-hdd</option>
												<option value="icon-headphones">icon-headphones</option>
												<option value="icon-heart">icon-heart</option>
												<option value="icon-heart-empty">icon-heart-empty</option>
												<option value="icon-home">icon-home</option>
												<option value="icon-inbox">icon-inbox</option>
												<option value="icon-info-sign">icon-info-sign</option>
												<option value="icon-key">icon-key</option>
												<option value="icon-leaf">icon-leaf</option>
												<option value="icon-laptop">icon-laptop</option>
												<option value="icon-legal">icon-legal</option>
												<option value="icon-lemon">icon-lemon</option>
												<option value="icon-lightbulb">icon-lightbulb</option>
												<option value="icon-lock">icon-lock</option>
												<option value="icon-unlock">icon-unlock</option>
												<option value="icon-magic">icon-magic</option>
												<option value="icon-magnet">icon-magnet</option>
												<option value="icon-map-marker">icon-map-marker</option>
												<option value="icon-minus">icon-minus</option>
												<option value="icon-minus-sign">icon-minus-sign</option>
												<option value="icon-mobile-phone">icon-mobile-phone</option>
												<option value="icon-money">icon-money</option>
												<option value="icon-move">icon-move</option>
												<option value="icon-music">icon-music</option>
												<option value="icon-off">icon-off</option>
												<option value="icon-ok">icon-ok</option>
												<option value="icon-ok-circle">icon-ok-circle</option>
												<option value="icon-ok-sign">icon-ok-sign</option>
												<option value="icon-pencil">icon-pencil</option>
												<option value="icon-picture">icon-picture</option>
												<option value="icon-plane">icon-plane</option>
												<option value="icon-plus">icon-plus</option>
												<option value="icon-plus-sign">icon-plus-sign</option>
												<option value="icon-print">icon-print</option>
												<option value="icon-pushpin">icon-pushpin</option>
												<option value="icon-qrcode">icon-qrcode</option>
												<option value="icon-question-sign">icon-question-sign</option>
												<option value="icon-quote-left">icon-quote-left</option>
												<option value="icon-quote-right">icon-quote-right</option>
												<option value="icon-random">icon-random</option>
												<option value="icon-refresh">icon-refresh</option>
												<option value="icon-remove">icon-remove</option>
												<option value="icon-remove-circle">icon-remove-circle</option>
												<option value="icon-remove-sign">icon-remove-sign</option>
												<option value="icon-reorder">icon-reorder</option>
												<option value="icon-reply">icon-reply</option>
												<option value="icon-resize-horizontal">icon-resize-horizontal</option>
												<option value="icon-resize-vertical">icon-resize-vertical</option>
												<option value="icon-retweet">icon-retweet</option>
												<option value="icon-road">icon-road</option>
												<option value="icon-rss">icon-rss</option>
												<option value="icon-screenshot">icon-screenshot</option>
												<option value="icon-search">icon-search</option>
												<option value="icon-share">icon-share</option>
												<option value="icon-share-alt">icon-share-alt</option>
												<option value="icon-shopping-cart">icon-shopping-cart</option>
												<option value="icon-signal">icon-signal</option>
												<option value="icon-signin">icon-signin</option>
												<option value="icon-signout">icon-signout</option>
												<option value="icon-sitemap">icon-sitemap</option>
												<option value="icon-sort">icon-sort</option>
												<option value="icon-sort-down">icon-sort-down</option>
												<option value="icon-sort-up">icon-sort-up</option>
												<option value="icon-spinner">icon-spinner</option>
												<option value="icon-star">icon-star</option>
												<option value="icon-star-empty">icon-star-empty</option>
												<option value="icon-star-half">icon-star-half</option>
												<option value="icon-tablet">icon-tablet</option>
												<option value="icon-tag">icon-tag</option>
												<option value="icon-tags">icon-tags</option>
												<option value="icon-tasks">icon-tasks</option>
												<option value="icon-thumbs-down">icon-thumbs-down</option>
												<option value="icon-thumbs-up">icon-thumbs-up</option>
												<option value="icon-time">icon-time</option>
												<option value="icon-tint">icon-tint</option>
												<option value="icon-trash">icon-trash</option>
												<option value="icon-trophy">icon-trophy</option>
												<option value="icon-truck">icon-truck</option>
												<option value="icon-umbrella">icon-umbrella</option>
												<option value="icon-upload">icon-upload</option>
												<option value="icon-upload-alt">icon-upload-alt</option>
												<option value="icon-user">icon-user</option>
												<option value="icon-user-md">icon-user-md</option>
												<option value="icon-volume-off">icon-volume-off</option>
												<option value="icon-volume-down">icon-volume-down</option>
												<option value="icon-volume-up">icon-volume-up</option>
												<option value="icon-warning-sign">icon-warning-sign</option>
												<option value="icon-wrench">icon-wrench</option>
												<option value="icon-zoom-in">icon-zoom-in</option>
												<option value="icon-zoom-out">icon-zoom-out</option>
												<optgroup label="Text Editor Icons">
													<option value="icon-file">icon-file</option>
													<option value="icon-file-alt">icon-file-alt</option>
													<option value="icon-cut">icon-cut</option>
													<option value="icon-copy">icon-copy</option>
													<option value="icon-paste">icon-paste</option>
													<option value="icon-save">icon-save</option>
													<option value="icon-undo">icon-undo</option>
													<option value="icon-repeat">icon-repeat</option>
													<option value="icon-text-height">icon-text-height</option>
													<option value="icon-text-width">icon-text-width</option>
													<option value="icon-align-left">icon-align-left</option>
													<option value="icon-align-center">icon-align-center</option>
													<option value="icon-align-right">icon-align-right</option>
													<option value="icon-align-justify">icon-align-justify</option>
													<option value="icon-indent-left">icon-indent-left</option>
													<option value="icon-indent-right">icon-indent-right</option>
													<option value="icon-font">icon-font</option>
													<option value="icon-bold">icon-bold</option>
													<option value="icon-italic">icon-italic</option>
													<option value="icon-strikethrough">icon-strikethrough</option>
													<option value="icon-underline">icon-underline</option>
													<option value="icon-link">icon-link</option>
													<option value="icon-paper-clip">icon-paper-clip</option>
													<option value="icon-columns">icon-columns</option>
													<option value="icon-table">icon-table</option>
													<option value="icon-th-large">icon-th-large</option>
													<option value="icon-th">icon-th</option>
													<option value="icon-th-list">icon-th-list</option>
													<option value="icon-list">icon-list</option>
													<option value="icon-list-ol">icon-list-ol</option>
													<option value="icon-list-ul">icon-list-ul</option>
													<option value="icon-list-alt">icon-list-alt</option>
													<optgroup label="Directional Icons">
														<option value="icon-angle-left">icon-angle-left</option>
														<option value="icon-angle-right">icon-angle-right</option>
														<option value="icon-angle-up">icon-angle-up</option>
														<option value="icon-angle-down">icon-angle-down</option>
														<option value="icon-arrow-down">icon-arrow-down</option>
														<option value="icon-arrow-left">icon-arrow-left</option>
														<option value="icon-arrow-right">icon-arrow-right</option>
														<option value="icon-arrow-up">icon-arrow-up</option>
														<option value="icon-caret-down">icon-caret-down</option>
														<option value="icon-caret-left">icon-caret-left</option>
														<option value="icon-caret-right">icon-caret-right</option>
														<option value="icon-caret-up">icon-caret-up</option>
														<option value="icon-chevron-down">icon-chevron-down</option>
														<option value="icon-chevron-left">icon-chevron-left</option>
														<option value="icon-chevron-right">icon-chevron-right</option>
														<option value="icon-chevron-up">icon-chevron-up</option>
														<option value="icon-circle-arrow-down">icon-circle-arrow-down</option>
														<option value="icon-circle-arrow-left">icon-circle-arrow-left</option>
														<option value="icon-circle-arrow-right">icon-circle-arrow-right</option>
														<option value="icon-circle-arrow-up">icon-circle-arrow-up</option>
														<option value="icon-double-angle-left">icon-double-angle-left</option>
														<option value="icon-double-angle-right">icon-double-angle-right</option>
														<option value="icon-double-angle-up">icon-double-angle-up</option>
														<option value="icon-double-angle-down">icon-double-angle-down</option>
														<option value="icon-hand-down">icon-hand-down</option>
														<option value="icon-hand-left">icon-hand-left</option>
														<option value="icon-hand-right">icon-hand-right</option>
														<option value="icon-hand-up">icon-hand-up</option>
														<option value="icon-circle">icon-circle</option>
														<option value="icon-circle-blank">icon-circle-blank</option>
														<optgroup label="Video Player Icons">
															<option value="icon-play-circle">icon-play-circle</option>
															<option value="icon-play">icon-play</option>
															<option value="icon-pause">icon-pause</option>
															<option value="icon-stop">icon-stop</option>
															<option value="icon-step-backward">icon-step-backward</option>
															<option value="icon-fast-backward">icon-fast-backward</option>
															<option value="icon-backward">icon-backward</option>
															<option value="icon-forward">icon-forward</option>
															<option value="icon-fast-forward">icon-fast-forward</option>
															<option value="icon-step-forward">icon-step-forward</option>
															<option value="icon-eject">icon-eject</option>
															<option value="icon-fullscreen">icon-fullscreen</option>
															<option value="icon-resize-full">icon-resize-full</option>
															<option value="icon-resize-small">icon-resize-small</option>
															<optgroup label="Social Icons">
																<option value="icon-phone">icon-phone</option>
																<option value="icon-phone-sign">icon-phone-sign</option>
																<option value="icon-facebook">icon-facebook</option>
																<option value="icon-facebook-sign">icon-facebook-sign</option>
																<option value="icon-twitter">icon-twitter</option>
																<option value="icon-twitter-sign">icon-twitter-sign</option>
																<option value="icon-github">icon-github</option>
																<option value="icon-github-alt">icon-github-alt</option>
																<option value="icon-github-sign">icon-github-sign</option>
																<option value="icon-linkedin">icon-linkedin</option>
																<option value="icon-linkedin-sign">icon-linkedin-sign</option>
																<option value="icon-pinterest">icon-pinterest</option>
																<option value="icon-pinterest-sign">icon-pinterest-sign</option>
																<option value="icon-google-plus">icon-google-plus</option>
																<option value="icon-google-plus-sign">icon-google-plus-sign</option>
																<option value="icon-sign-blank">icon-sign-blank</option>
																<optgroup label="Medical Icons">
																	<option value="icon-ambulance">icon-ambulance</option>
																	<option value="icon-beaker">icon-beaker</option>
																	<option value="icon-h-sign">icon-h-sign</option>
																	<option value="icon-hospital">icon-hospital</option>
																	<option value="icon-medkit">icon-medkit</option>
																	<option value="icon-plus-sign-alt">icon-plus-sign-alt</option>
																	<option value="icon-stethoscope">icon-stethoscope</option>
																	<option value="icon-user-md">icon-user-md</option>
										</form:select>
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label> Icon Color</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="iconColor" class="form-control">
											<form:option value="red" label="Red" />
											<form:option value="blue" label="Blue" />
											<form:option value="green-turquoise" label="Green Turquoise" />
											<form:option value="purple-medium" label="Purple Medium" />
											<form:option value="blue-steel" label="Blue Steel" />
											<form:option value="green-jungle" label="Green Jungle" />
										</form:select>
									</div>
								</div>
								<br>
								<div class="row" id="no_po_field_box">
									<div class="form-display-as-box col-lg-2 control-label"
										id="no_po_display_as_box">
										<label>Step Process</label>
									</div>
									<div class="col-lg-10" id="no_po_input_box">
										<form:select path="process" class="form-control">
											<form:option value="customer" label="Customer" />
											<form:option value="company" label="Mikatama" />
										</form:select>
									</div>
								</div>
								<br>

								<!-- Start of hidden inputs -->
								<input id="field-created_by" name="created_by" value="1"
									class="form-control" type="hidden">
								<div id="report-error"
									class="report-div error alert alert-danger" role="alert"></div>
								<div id="report-success"
									class="report-div success alert alert-success"></div>


								<button type="submit" class="btn btn-primary">Add</button>

								<!--button type="button" id="save-and-go-back-button" class="btn btn-info">Save and go back to list</button-->
								<a href="/content/ourwork" type="button" id="cancel-button"
									class="btn btn-default">Cancel</a>
								<span class="small-loading" id="FormLoading"><img
									src="${contextPath }/assets/metronic/svg/loading-spin-primary.svg"
									alt="loading..."> Loading, saving data...</span>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>