<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
     <!-- font awesome cdn link  -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <!-- custom css file link  -->
     <link rel="stylesheet" href="<c:url value="/css/Details.css"/>">
     <!-- google font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
          <c:if test="${not empty giohangs }">
             <span id="listsize">${listSize}</span>
            </c:if>
            <c:if test="${ empty giohangs }">
             <span id="listsize">0</span>
            </c:if>
        </div>
        <div class="acount">
            <i class="fa-solid fa-arrow-right-from-bracket"></i>
            <span>Hung</span>

        </div>
    </div> 
    
</header>
<div class="breadcrumb">
    <div class="breadcrumb-container">
        <div class="breadcrumb-list">
            <a href="../../Homepage.html">Home</a>
            <i class="material-icons">&#xe315;</i>
            <a href="cho-Alaska.html">${giong}</a>
            <i class="material-icons">&#xe315;</i>
            <p>${dongvat.getName() }</p>
        </div>
    </div>
</div>
<div class="container">
    <div class="product-card">
            <div class="product-image">
                <img src='<c:url value="uploads/${dongvat.getAnh()}"/>' alt=" ${dongvat.getName()}"
                     width="375" height="375">
            </div>
            <div class="description">
                <div class="product-card-content">
                    <h1 class="product-card-title">${dongvat.getName()}</h1>
                    <p class="product-card_price">
                        <span class="product-card_price-ins" data-value="${dongvat.getPrice() }">${dongvat.getPrice() } ₫</span>
                    </p>
                <div class="description-wrapper">
                    <p class="description-title">Thông tin chi tiết:</p>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i style="cursor: default" class="material-icons">&#xe91d;</i>
                            <span class="description-label">Giống:</span>
                        </div>
                        <span class="value">${giong}</span>
                    </div>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i class="fa fa-intersex"></i>
                            <span class="description-label">Giới tính:</span>
                        </div>
                        <span class="value">${dongvat.getGoi_tinh()}</span>
                    </div>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i class="material-icons">cake</i>
                            <span class="description-label">Tuổi:</span>
                        </div>
                        <span class="value">${dongvat.getTuoi()}</span>
                    </div>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i class='fas fa-syringe'></i>
                            <span class="description-label">Đã tiêm chủng:</span>
                        </div>
                        <span class="value">${dongvat.getDtchung()}</span>
                    </div>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i class='fas fa-briefcase-medical'></i>
                            <span class="description-label">Bảo hành sức khỏe:</span>
                        </div>
                        <span class="value">${dongvat.getbHSK()}</span>
                    </div>
                    <div class="wrap">
                        <div class="label-wrap">
                            <i class='far fa-list-alt'></i>
                            <span class="description-label">Mô tả thêm:</span>
                        </div>
                        <span class="value">${dongvat.getMota()}</span>
                    </div>
                </div>
                <div class="order-button">
                    <button id="id" data-value="${dongvat.getId()}"  class="btn-add-to-cart">Thêm vào giỏ<i class='fas fa-cart-plus'></i></button>
                    <button class="btn-buy-now">Mua ngay</button>
                </div>
            </div>
          </div>
    </div>
</div>
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
   <script
		src="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js"></script> 
  <script >
  $(document).ready(
		 function () {
			GanTongTien();
			function GanTongTien() {
				$('.product-card_price-ins').each(function () {
					var tien=$(this).attr('data-value');
					var format=parseFloat(tien)
					.toFixed(3).replace(
							/(\d)(?=(\d{3})+\.)/g,
							"$1.").toString();
					$(this).html(format+' d');
				})
			};
		
			$(".btn-add-to-cart").click(function() {
				$('.notifyjs-corner').empty();
				var id=$("#id").attr("data-value");
				$.ajax({
					url : '/THU_CUNG/api-details',
					type : 'POST',
					data :({
						
						id : id
						
					}),
					
					success : function(re) {
					     $.notify('Đã thêm vào giỏ hàng', "success");
						 $("#listsize").html(re); 

					}
				});
			});
			
			
			
		});
  </script>
</body>
</html>