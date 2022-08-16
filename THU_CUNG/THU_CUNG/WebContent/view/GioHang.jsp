<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title>Trang giỏ hàng</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <!-- custom css file link  -->
     <link rel="stylesheet" href="<c:url value="/css/Giohang.css"/>">
<script type="text/javascript" src='<c:url value="/JS/jquery.min.js"/>'>
  
  </script>
</head>
<body>
 <!-- header section starts  -->
<header class="header">
   
    <a href='<c:url value="/HomePage"/>' class="logo"> <img  class="LG" src='<c:url value="/img/PETSHOP.png"/>' alt=""> PetShop </a>
    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>
    <div class="icons">     
        <!-- <div id="menu-btn" class="fas fa-bars"></div> -->
        <a href='<c:url value="/j_security_check?code=signin"/>' class="fas fa-user"></a>
          <div class="notecart">
            <a href='<c:url value="/Cart"/>' class="fas fa-shopping-cart"></a>
            <span id="listsize">${listSize}</span>
        </div>
        <div class="acount">
            <i class="fa-solid fa-arrow-right-from-bracket"></i>
            <span>${name}</span>

        </div>
    </div> 
    
</header>
    <!--  section menu  -->
<!--container-->
<div class="container">
  <section id="cart">
  <c:forEach var="item" items="${list}">
  
    <article class="product" id="product${item.getId()}">
    <input type="hidden"  class="idCart" value="${item.getId()}" />
      <header>
        <a class="remove">
          <img src='<c:url value="uploads/${item.getImage() }"/>' alt="Alaska Oversize Đen Trắng" width="375" height="375">
          <h3 class="removeProduct">Remove product</h3>
        </a>
      </header>
      <div class="content">
        <h1>${item.getName() }</h1>
      </div>
      <footer class="Chuthich" >
		<div class="SoLuong">
          <h2>Số Lượng :</h2>
          <input class="SLgiohang" type="number" value="${item.getCount()}" min="1">
        </div>
        <h2 class="full-price" data-value="${item.getPrice()}">
         ${item.getPrice()} ₫
        </h2>
      </footer>
    </article>
</c:forEach>
     
  </section>
</div>
<div class="address">
  <h2>Nhập Địa Chỉ :</h2>
  <form class="av-form" id="form">
    <input id="name" type="text" placeholder=" Full Name">
    <input id="numberphone" type="numberphone" placeholder="Number Phone" >
    <input id="address" type="address" placeholder="Address" >
    <input id="notify" type="note" placeholder="Note" >
  </form>
</div>
<!--site-footer-->
<div id="site-footer">
  <div class="container clearfix">
   
    <div class="right">
      <h1 class="total">Tổng cộng: <span>0</span>đ</h1>
      <a class="btn"> Thanh toán</a>
    </div>
  </div>
</div>
    <!-- footer -->
<footer class="container-footer">
      <div class="footer-wrap">
          <div class="row">
              <div class="column">
                  <h3 class="col-title">TẢI ỨNG DỤNG CHỢ PET</h3>
                  <div class="store-content">
                      <div class="qrcode">
                          <div>
                              <img class="qrcode-img" src='<c:url value="/img/qrcode.jpg"/>' alt="">
                          </div>
                      </div>
                      <div class="link">
                          <a class="store-item " href="">
                              <img class="img-chplay imges" src='<c:url value="/img/ggplay.png"/>' alt="">
                          </a>
                          <a class="store-item " href="">
                              <img class="img-appstore imges " src='<c:url value="/img/appstore.png"/>' alt="">
                          </a>
                      </div>
                  </div>
              </div>
              <div class="column">
                  <h3 class="col-title">HỖ TRỢ KHÁCH HÀNG</h3>
                  <ul class="footer-list">
                      <li><a href="" class="items">Liên hệ hỗ trợ</a></li>
                      <li><a href="" class="items">Những câu hỏi thường gặp</a></li>
                      <li><a href="" class="items">Chính sách bảo mật thông tin</a></li>
                      <li><a href="" class="items">Cơ chế giải quyết khiếu nại tranh chấp</a></li>
                  </ul>
              </div>
              <div class="column">
                  <h3 class="col-title">VỀ CHÚNG TÔI</h3>
                  <ul class="footer-list">
                      <li><a href="" class="items">Giới thiệu</a></li>
                      <li><a href="" class="items">Tuyển dụng</a></li>
                      <li><a href="" class="items">Quy chế hoạt động</a></li>
                  </ul>
              </div>
              <div class="column">
                  <h3 class="col-title">Liên Hệ</h3>
                  <div class="icons-lh">
                      <a href="" class="contact-item">
                          <i class="fab fa-facebook"></i>
                      </a>
                      <a href="" class="contact-item">
                          <i class="fas fa-mobile-alt"></i>
                      </a>
                  </div>
                  <h3 class="col-title-1">CHỨNG NHẬN</h3>
                  <a href="" class="contact">
                      <img src='<c:url value="/img/DDK.png"/>' alt="" class="DDK">
                  </a>
              </div>
          </div>
      </div>
      <section class="section-wrap">
          <div class="container-section">
              <div class="my-address">
                  <p>Địa chỉ:___________________ Thành phố Hồ Chí Minh, Việt Nam</p>
                  <p>
                      <a href="mailto:19130082@st.hcmuaf.edu.vn"> Email: 19130082@st.hcmuaf.edu.vn  </a>
                      <span>-</span>
                      <a href="tel:0372820810"> Đường dây nóng: 0372820810</a>
                  </p>
              </div>
          </div>
      </section>

  </footer>
 
</body>
  <script  src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script> 
	
	<script>
		$(document).ready(
				function() {
					GanTongTien();
					function GanTongTien(isIventChange) {
						var tongtien = 0;
						$(".full-price").each(
								function() {
									var giatienTT = $(this).attr("data-value");
									var soluong = $(this).closest(".product").find(
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
									$(".total").html(formatTongtien); 

								})
					}
					;
					$('.SLgiohang').change(
							function() {
								var count = $(this).val();
								var price = $(this).closest(".product").find(
										".full-price").attr("data-value");
								var tongtien = count * price;
								var format = parseFloat(tongtien).toFixed(3)
										.replace(/(\d)(?=(\d{3})+\.)/g, "$1.")
										.toString();
								$(this).closest(".product").find(".full-price")
										.html(format);
								GanTongTien(true);			
								
								var id = $(this).closest(".product").find(".idCart").val();	
								$.ajax({
								
									url : 'http://localhost:8080/THU_CUNG/api-details'
													+ '?' + $.param({
														"id" : id,"count" : count

													}),
									type : 'PUT',
								
									success : function(re) {
									}
								}); 
							});
					
					$(".btn").click(
						
							function() {
								$('.notifyjs-corner').empty();
								var user = $("#name").val();
								var phone = $("#numberphone").val();
								var address = $("#address").val();
								var note = $("#notify").val();
								var tongtien = $(".total").text();
								
								if(user==""||phone==""||address==""){
									$.notify('Vui long dien day du thong tin',"error");
								}else{
									
								$.ajax({
									url : '/THU_CUNG/api-payment',
									type : 'POST',
									data : {
										user : user,
										phone : phone,
										address : address,
										note : note,
										tongtien : tongtien
									},
									success : function(re) {
										$.notify('Dat hang thanh cong',"success");
										document.getElementById("form").reset();
										
									}
								});
								}
							});
					
					
					
					$(".removeProduct").click(function () {
						$('.notifyjs-corner').empty();
						var id = $(this).closest(".product").find(".idCart").val();	
						var name="product"+id;
						document.getElementById(name).style.display='none';
						$.notify('Xóa thành công',"success");
						$.ajax({
							url : 'http://localhost:8080/THU_CUNG/api-details'+'?'+$.param({"id":id}),
							type : 'DELETE',
							success : function(value) {
								$("#listsize").html(value);
								GanTongTien(true);
								if(value==0){
									$(".total").html(value);
								}
							}
						});
						
					});
					
				});
	</script>


</html>