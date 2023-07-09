<%@page import="in.project.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Astha Hospital || The Best Hospital</title>
<%@include file="component/alcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-webkit-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.75);
}

.iw {
	background-color: #F08080;
	color: #3454B4;
}
</style>

</head>
<body>
	<%@include file="component/navbar.jsp"%>


	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="imgs/img9.jpg" class="d-block w-100" alt="..."
					height="550px">
			</div>
			<div class="carousel-item">
				<img src="imgs/img2.jpg" class="d-block w-100" alt="..."
					height="550px">
			</div>
			<div class="carousel-item">
				<img src="imgs/img13.jpg" class="d-block w-100" alt="..."
					height="550px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2 ">Key Features of our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 iw">About Us</p>
								<p>Astha Hospital is a super speciality hospital with
									advanced equipment, progressive infrastructure, top-class
									professionals assisted by a qualified workforce.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 iw">Clean Environment</p>
								<p>Astha Hospitals - Kolkata & Asansol are clean, efficient,
									customer centric, affordable and accessible and providing
									outstanding medical expertise and care always.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 iw">Friendly Doctors</p>
								<p>Delivering the best patient care services from prevention
									to treatment with our best team of physicians, surgeons and
									health care providers of high repute and Doctors are very
									Friendly.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5 iw">Medical Research</p>
								<p>Astha Hospital medical research seeks to take the medical
									discoveries that have been made in a laboratory setting and
									move them into medical practices it is used by physicians.</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 p-4">
				<img alt="" src="imgs/img5.jpg" height="500px" width="350px">
			</div>

		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2 ">Our Team</p>

		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="imgs/img17.jpg" width="250px" height="270px">
						<p class="fw-bold fs-5">Debashis Malkhandy</p>
						<p class="fs-7">(CEO & Senior OrthoSurgeon)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="imgs/img15.jpg" width="250px" height="270px">
						<p class="fw-bold fs-5">Dr.Hyder Abbas</p>
						<p class="fs-7">(Senior NeuroSurgeon)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="imgs/img16.jpg" width="250px" height="270px">
						<p class="fw-bold fs-5">Dr. Nitin Manjunath</p>
						<p class="fs-7">(Senior Cardiologist)</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="imgs/img8.jpg" width="250px" height="270px">
						<p class="fw-bold fs-5">Dr.Naveen Reddy</p>
						<p class="fs-7">(Senior Gynecologist)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	<%@include file="component/footer.jsp"%>
</body>
</html>