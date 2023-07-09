<%@page import="in.project.entity.Doctor"%>
<%@page import="in.project.dao.DoctorDao"%>
<%@page import="in.project.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Page</title>
<%@include file="../component/alcss.jsp"%>
</head>
<style>
.paint-card {
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}
.back-img {
	background-image: url("../imgs/img11.jpg");
	background-repeat: no-repeat;
	height: 95vh;
	width: 100v;
	background-size: cover;
}
</style>

<body class="back-img">

<c:if test="${empty doctObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	
<%@include file="navbar.jsp"%>
<p class="text-center fs-3">Doctor Dashboard</p>

	<%
	Doctor d = (Doctor) session.getAttribute("doctObj");
	DoctorDao dao = new DoctorDao(DBConnect.getConect());
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br>
							<%=dao.countAppointmentByDocotrId(d.getId())%>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>