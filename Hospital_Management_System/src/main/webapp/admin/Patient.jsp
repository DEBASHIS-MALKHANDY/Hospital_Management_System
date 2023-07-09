<%@page import="java.util.List"%>
<%@page import="in.project.entity.Doctor"%>
<%@page import="in.project.db.DBConnect"%>
<%@page import="in.project.entity.Appointment"%>
<%@page import="in.project.dao.DoctorDao"%>
<%@page import="in.project.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Page</title>
<%@include file="../component/alcss.jsp"%>
<style type="text/css">
paint-card {
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}

.back-img {
	background-image: url("../imgs/img5.jpg");
	background-repeat: no-repeat;
	height: 145vh;
	width: 100v;
	background-size: cover;
}

.card-body{
 background-color:cyan;

}


</style>
</head>
<body class="back-img">
	<%@include file="navbar.jsp"%>
	<div class="col-md-12">
		<div class="card paint-card mt-5 mb-5">
			<div class="card-body">
				<p class="fs-3 text-center">Patient Details</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Appointment</th>
							<th scope="col">Email</th>
							<th scope="col">Mob No</th>
							<th scope="col">Diseases</th>
							<th scope="col">Doctor Name</th>
							<th scope="col">Address</th>
							<th scope="col">Status</th>
						</tr>
					</thead>
					<tbody>
						<%
						AppointmentDAO dao = new AppointmentDAO(DBConnect.getConect());
						DoctorDao dao2 = new DoctorDao(DBConnect.getConect());
						List<Appointment> list = dao.getAllAppointment();
						for (Appointment ap : list) {
							Doctor d = dao2.getDoctorById(ap.getDoctorId());
						%>
						<tr>
							<th><%=ap.getFullName()%></th>
							<td><%=ap.getGender()%></td>
							<td><%=ap.getAge()%></td>
							<td><%=ap.getAppoinDate()%></td>
							<td><%=ap.getEmail()%></td>
							<td><%=ap.getPhNo()%></td>
							<td><%=ap.getDiseases()%></td>
							<td><%=d.getFullName()%></td>
							<td><%=ap.getAddress()%></td>
							<td><%=ap.getStatus()%></td>
						</tr>
						<%
						}
						%>


					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>