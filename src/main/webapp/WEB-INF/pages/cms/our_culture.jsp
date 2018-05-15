<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="page-content-wrapper">
    <div class="page-content">
        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li><i class="fa fa-dashboard"></i> Our Culture</li>
            </ul>
        </div>
        <h3 class="page-title">Our Culture</h3>
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">Welcome</h3>
                <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                </div><!-- /.box-tools -->
            </div><!-- /.box-header -->
            <div class="box-body">
                <div class="table-scrollable">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th> # </th>
                                <th> Title </th>
                                <th> Content </th>
                                <th> Picture </th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${not empty ourCultures}">
                                <c:forEach var="ourCulture"
                                    items="${ourCultures}">
                                    <tr>
                                        <td>${ourCulture.id}</td>
                                        <td>${ourCulture.title}</td>
                                        <td>${ourCulture.content}</td>
                                        <td>dummy gambar</td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            <c:if test="${empty ourCultures}">
                                <tr>
                                    <td colspan="4">No data found</td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div><!-- /.box-body -->
        </div>
    </div>
</div>