
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
	integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- custom css file link  -->
<link rel="stylesheet" href="<c:url value="/css/Admin.css"/>">
<script type="text/javascript" src='<c:url value="/JS/jquery.min.js"/>'>
	
</script>

<title>Manager Dog</title>
</head>
<body>
	<div class="container">
		<div class="navigation active">
			<ul>
				<li><a href=""> <span class="icon"><img
							src='<c:url value="/img/PETSHOP.png"/>' alt=""></span> <span
						class="title">PetPhop</span>
				</a></li>
				<li><a href=""> <span class="icon"><ion-icon
								name="home-outline"></ion-icon></span> <span class="title">Dashboard</span>
				</a></li>
				<li><a href=""> <span class="icon"><ion-icon
								name="people-outline"></ion-icon></span> <span class="title">Customers</span>
				</a></li>
				<li> <a href="<c:url value="/managerDog"/>"><span class="icon"><i
							class="fa-solid fa-dog"></i></span> <span class="title">Quản Lý
							Chó</span>
				</a></li>
				<li> <a href="<c:url value="/managerCat"/>"> <span
						class="icon"><i class="fa-solid fa-cat"></i></span> <span
						class="title">Quản Lý Mèo</span>
				</a></li>
				<li><a href=""> <span class="icon"><ion-icon
								name="people-outline"></ion-icon></span> <span class="title">Help</span>
				</a></li>
				<li><a href=""> <span class="icon"><ion-icon
								name="settings-outline"></ion-icon></span> <span class="title">Setting</span>
				</a></li>
				<li><a href="<c:url value="/view/Signin.jsp"/>"> <span
						class="icon"><ion-icon name="log-out-outline"></ion-icon></span> <span
						class="title">Sign out</span>
				</a></li>
			</ul>
		</div>
		<!-- main -->
		<div class="main active">
			<div class="topbar">
				<div class="toggle">
					<ion-icon name="menu-outline"></ion-icon>
				</div>
				<!-- search -->
				<div class="search">
					<label> <input type="text" placeholder="Search...">
						<ion-icon name="search-outline"></ion-icon>
					</label>
				</div>
				<!-- user Img -->
				<div class="user">
					<img src='<c:url value="/img/dog/ad1.jpg"/>' alt="">
				</div>
			</div>
			<!-- cards -->
			<div class="carBox">
				<div class="card">
					<div>
						<div class="numbers">1.553</div>
						<div class="cardName">Views</div>
					</div>
					<div class="iconBx">
						<i class="far fa-eye"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">80</div>
						<div class="cardName">Sales</div>
					</div>
					<div class="iconBx">
						<i class="fal fa-shopping-cart"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">553</div>
						<div class="cardName">Comment</div>
					</div>
					<div class="iconBx">
						<i class="far fa-comments"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">7.553$</div>
						<div class="cardName">Earning</div>
					</div>
					<div class="iconBx">
						<i class="fas fa-dollar-sign"></i>
					</div>
				</div>
			</div>

			<div class="details">
				<!-- data order details lits -->
				<div class="recentOrders">
					<div class="cardHeader">


						<div class="iconcheck">
							<button>
								<i class="fa-solid fa-pen"></i>
							</button>
							<button id="submitAddProduct" data-toggle="tooltip"
								title="Them bai viet">
								<i class="fa-solid fa-square-plus"></i>
							</button>
							<button>
								<i class="fa-solid fa-trash-can"></i>
							</button>
						</div>
					</div>
					<table>
						<thead>
							<tr>
								<td>Name</td>
								<td>Picture</td>
								<td>Price</td>
								<td>Status</td>
								<td>Check</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${listDongVat}">
								<tr>
									<td>${item.getName()}</td>
									<td><img style="width: 100px; height: 100px"
										src='<c:url value="uploads/${item.getAnh()}"/>' alt=""></td>
									<td class="pricesp" data-value="${item.getPrice()}">${item.getPrice()}$</td>
									<td><span class="status delivered">Delivered</span></td>
									<td><input type="checkbox" class="vehicle"></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<!-- customs -->
				<div class="recentCustomers">
					<div class="cardHeader">
						<h2>Product information</h2>
					</div>
					<form method="post" enctype="multipart/form-data" id="form_modal">
						<table>
							<tr>

								<td><h4>
										Chọn Loại Chó<br> <select name="categoryId"
											id="categoryId">
											<c:forEach var="item" items="${list}">
												<option value="${item.getId()}">${item.getName()}</option>
											</c:forEach>
										</select>
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Tên<br> <input id="namesp" type="text" name="namesp"
											placeholder="    Name">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Tuổi<br> <input type="text" id="tuoisp" name="tuoisp"
											placeholder="    Age">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Giá<br> <input type="text" id="pricesp" name="pricesp"
											placeholder="    Price">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Giới Tính<br> <input type="text" id="gioitinhsp" name="gioitinhsp"
											placeholder="    Sex">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Đã Tiêm Chủng<br> <input type="text" id="datiemchungsp" name="datiemchungsp"
											placeholder="    Vaccinated">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Bảo Hành Sức Khỏe<br> <input type="text" name="baohanhsuckhoesp"
											id="baohanhsuckhoesp" placeholder="    Health Warranty">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Mô tả Thêm<br> <input type="text" id="motatthemsp" name="motatthemsp"
											placeholder="    Description">
									</h4></td>
							</tr>
							<tr>
								<td><h4>
										Lấy file Ảnh<br>
										<div class="span">
											<input onchange="chooseFile(this)" accept="image/*" name="imagesp"
												id="imagesp" type="file" placeholder="    Description">
											<img src="" id="img" alt="" width="52px" height="52px">
										</div>
									</h4></td>
							</tr>
							<tr>
								<td><div class="span">
										<button type="button" id="addSP">Submit</button>
										<button type="button" id="resetSP">Reset</button>
									</div></td>
							</tr>
						</table>
					</form>

				</div>
			</div>
		</div>

	</div>
	 <script
		src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script> 
 
	<script>
	$("#resetSP").click(function () {
		document.getElementById("form_modal").reset();
	});
		

			
			$("#addSP").click(function(event){
				 event.preventDefault();
					$("#img").attr('src', "");
				 $('.notifyjs-corner').empty();
					var categoryId=$("#categoryId").val();
					var namesp=$("#namesp").val();
					var tuoisp=$("#tuoisp").val();
					var pricesp=$("#pricesp").val();
					var gioitinhsp=$("#gioitinhsp").val();
					var datiemchungsp=  $("#datiemchungsp").val();
					var baohanhsuckhoesp=  $("#baohanhsuckhoesp").val();
					var motatthemspme=  $("#motatthemsp").val();
				    var img=$("#img").attr('src');
				   
				    
				    var form = $('#form_modal')[0];
				    var data = new FormData(form);
				    data.append("isDog","1");
				    data.append("isCat","0");
				   
				    
				   
				    
				    if(categoryId==""||namesp==""||tuoisp==""||pricesp==""||gioitinhsp==""||datiemchungsp==""||baohanhsuckhoesp==""
				    	||motatthemspme==""){
				    	$.notify('Vui long dien thong tin',"erro");
				    }else{
				    
				   
				 	 $.ajax({	// đẩy dữ liệu lên => api-table-product
						url : '/THU_CUNG/api-table-product',
						type : 'POST',
						enctype: 'multipart/form-data',
						data:data,
						processData: false,
			            contentType: false,
			            cache: false,
			            timeout: 800000,
						success : function(re) {
			
								$.notify('Them thanh cong',"success");
								$("#modalEdit").modal('hide');
								var table = document.getElementById("tableProduct");
								table.innerHTML = re;
						}
					}); 
				    }
				

		});

		function chooseFile(fileInput) {
			if (fileInput.files && fileInput.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#img").attr('src', e.target.result);
				}
				reader.readAsDataURL(fileInput.files[0])
			}

		}
	</script>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

	<script>
	
		// menu Toggle
		let toggle = document.querySelector('.toggle');
		let navigation = document.querySelector('.navigation');
		let main = document.querySelector('.main');
		toggle.onclick = function() {
			navigation.classList.toggle('active');
			main.classList.toggle('active');
		}
	</script>
	<script>
	$(document).ready(
			function() {
				GanTongTien();
				function GanTongTien() {				
				 	$(".pricesp").each(
							function() {
								var giatienTT = $(this).attr("data-value");
								var formatTongtien = parseFloat(giatienTT)
								.toFixed(3).replace(
										/(\d)(?=(\d{3})+\.)/g,
										"$1.").toString();
						$(this).html(formatTongtien);
								/* alert(giatienTT); */
							/* 	var soluong = $(this).closest(".product").find(
										".SLgiohang").val();
								
								var giatien = parseFloat(giatienTT)
										* parseFloat(soluong);
								var formatGiatien = parseFloat(giatien)
										.toFixed(3).replace(
												/(\d)(?=(\d{3})+\.)/g,
												"$1.").toString()
								tongtien = parseFloat(tongtien)
										+ parseFloat(giatien);
								if (!isIventChange) {
									$(this).html(formatGiatien);
								}

								var formatTongtien = parseFloat(tongtien)
										.toFixed(3).replace(
												/(\d)(?=(\d{3})+\.)/g,
												"$1.").toString();
								$(".total").html(formatTongtien); */ 

							}) 
				}
			
				
				
				
			});
	</script>
</body>

</html>