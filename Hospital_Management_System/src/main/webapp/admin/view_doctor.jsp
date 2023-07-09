<%@page import="in.project.db.DBConnect"%>
<%@page import="in.project.dao.SpecialistDao"%>
<%@page import="in.project.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="in.project.dao.DoctorDao"%>
<%@page import="in.project.entity.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Doctor Page</title>
<style type="text/css">
paint-card {
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}

.back-img {
	background-image: url("../imgs/img19.jpg");
	background-repeat: no-repeat;
	height: 145vh;
	width: 100v;
	background-size: cover;
}
</style>
<%@include file="../component/alcss.jsp"%>
</head>
<body class="back-img">
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			

			<div class=col-md-12>
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scop="col">Full Name</th>
									<th scop="col">Dob</th>
									<th scop="col">Qualification</th>
									<th scop="col">Specialist</th>
									<th scop="col">Email</th>
									<th scop="col">Mob No</th>
									<th scop="col">Action</th>
								</tr>
							</thead>
							
							<tbody>

								<%
									DoctorDao dao2 = new DoctorDao(DBConnect.getConect());
								List<Doctor> list2 = dao2.getAllDoctor();
								for (Doctor d : list2) 
								{%><tr>

									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobNo()%></td>
								
									<td><a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
									<a href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a></td>

								</tr>
								<%}
									
								%>

							</tbody>

						</table>


					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>