<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<c:url value="/css/Signup.css"/>">
    <title>Sign up</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
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
            <span>${name }</span>

        </div>
    </div> 
    
</header>

     <div class="Dear">
        <div class="contain-wrap">
        <img id="bgroud" src='<c:url value="/img/login-background.jpg"/>' alt="">
            <div class="contain-login">
                <div class="title">
                    <img class="imglogo" src='<c:url value="/img/PETSHOP.png"/>' alt="">
                    <span class="title-login">Chợ Pet Xin Chào </span>
                </div>
                
                <form class="av-form" action="<c:url value="/j_security_check"/>" method="post">
                 <span id="note">${loi} </span>
                    <input id="name" name="name"type="text" placeholder=" Nhập tên tài khoản">
                    <input id="username" name="username"type="text" placeholder=" Nhập tài khoản">
                    <input class="password" name="password"type="password" placeholder="Nhập mật khẩu" >
                    <input class="password" name="passAgain"type="password" placeholder="Nhập lại mật khẩu" >
                    <button type="submit" name="login" value="Dangky" class="btn-DN"> Đăng Ký</button>                 
                </form>
                    <div class="submit">
                        <p>Remember me</p> 
                        <input class="checkbox" type="checkbox">                    
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
</body>
</html>