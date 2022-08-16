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
     <link rel="stylesheet" href="<c:url value="/css/HomePage.css"/>">

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
         <a href='<c:url value="/j_security_check?code=signout"/>' class="fa-solid fa-arrow-right-from-bracket"></a>
           
            <span>${name }</span>

        </div>
    </div> 
    
</header>
    <!--  section menu  -->
<div class="dear">
    <div class="menu-DC">
        <ul class="list-DC" style="list-style: none;display: flex;">
            <li class="li-dc">
                <div class="dc-item">
                        <span class="c1" id="c1"> 
                            <a class="c2" href=""> Chó ></a> 
                        </span> 
                        <div class="nav-bar nav-dog">
                            <div class="menu-bar">
                                <div class="img-bar">
                                    <img id="doggif" class="imggif" src='<c:url value="/img/doghome.gif"/>' alt="">
                                </div>
                                <div class="iteim-bar">
                                    <ul class="sub-menu">
                                        <li><a href='<c:url value="/Product?id=1&Loai=cho"/>'> Alaska</a></li>
                                        <li><a href="<c:url value="/Product?id=2&Loai=cho"/>"> Border Collie</a></li>
                                        <li><a href="<c:url value="/Product?id=3&Loai=cho"/>"> Bull Pháp</a></li>
                                        <li><a href="<c:url value="/Product?id=4&Loai=cho"/>"> Corgi</a></li>
                                        <li><a href="<c:url value="/Product?id=5&Loai=cho"/>"> Golden</a></li>
                                        <li><a href="<c:url value="/Product?id=6&Loai=cho"/>"> Husky</a></li>
                                    </ul>
                                    <ul class="sub-menu">
                                        <li><a href="<c:url value="/Product?id=7&Loai=cho"/>"> Labrador</a></li>
                                        <li><a href="<c:url value="/Product?id=8&Loai=cho"/>"> Phốc Sốc</a></li>
                                        <li><a href="<c:url value="/Product?id=9&Loai=cho"/>"> Poodle</a></li>
                                        <li><a href="<c:url value="/Product?id=10&Loai=cho"/>"> Pug</a></li>
                                        <li><a href="<c:url value="/Product?id=11&Loai=cho"/>"> Samoyed</a></li>
                                        <li><a href="<c:url value="/Product?id=12&Loai=cho"/>"> Shiba</a></li>                              
                                    </ul>                               
                                </div>
                            </div>
                        </div>                        
                </div>               
            </li>            
            <li class="li-dc">
                <div class="dc-item">
                    <span class="meo" id="c2"> 
                        <a class="c2" href=""> Mèo ></a> 
                    </span>
                    <div class="nav-bar nav-cat">
                        <div class="menu-bar" id="menubarcat">
                            <div class="img-bar">
                                <img id="catgif" class="imggif" src='<c:url value="/img/doghome.gif"/>' alt="">
                            </div>
                            <div class="iteim-bar">
                                <ul class="sub-menu">
                                    <li><a href="<c:url value="/Product?id=1&Loai=meo"/>"> Anh Lông Dài</a></li>
                                    <li><a href="<c:url value="/Product?id=2&Loai=meo"/>"> Anh Lông Ngắn</a></li>
                                    <li><a href="<c:url value="/Product?id=3&Loai=meo"/>"> Ba Tư</a></li>
                                    <li><a href="<c:url value="/Product?id=4&Loai=meo"/>"> Bengal</a></li>
                                    <li><a href="<c:url value="/Product?id=5&Loai=meo"/>"> Maine Coon</a></li>
                                    <li><a href="<c:url value="/Product?id=6&Loai=meo"/>"> Munchkin</a></li>
                                </ul>
                                <ul class="sub-menu">
                                    <li><a href="<c:url value="/Product?id=7&Loai=meo"/>"> Ragdol</a></li>
                                    <li><a href="<c:url value="/Product?id=8&Loai=meo"/>"> Scottish Flod</a></li>
                                    <li><a href="<c:url value="/Product?id=9&Loai=meo"/>"> Sphynx</a></li>
                                    <li><a href="<c:url value="/Product?id=10&Loai=meo"/>"> Tuxedo</a></li>
                                    <li><a href="<c:url value="/Product?id=11&Loai=meo"/>"> Rừng Na Uy</a></li>
                                    <li><a href="<c:url value="/Product?id=12&Loai=meo"/>"> Siberia</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                              
                </div>
            </li>
        </ul>
    </div>
    <div class= "nen">
        <img class="nen1" src='<c:url value="/img/1.jpg"/>' alt="">
    </div>

        <!--image slider start Dog-->
        <div class="BG-Dog">
            <div class="slider-Dog">
                <div class="slides-dog">
                  <!--radio buttons start-->
                  <input class="d" type="radio" name="radio-btn" id="radio1">
                  <input class="d" type="radio" name="radio-btn" id="radio2">
                  <input class="d" type="radio" name="radio-btn" id="radio3">
                  <input class="d" type="radio" name="radio-btn" id="radio4">
                  <!--radio buttons end-->
                  <!--slide images start-->
                  <div class="slide first">
                    <img src='<c:url value="/img/dog1.png"/>' alt="">
                  </div>
                  <div class="slide">
                    <img src='<c:url value="/img/dog2.png"/>' alt="">
                  </div>
                  <div class="slide">
                    <img src='<c:url value="/img/dog3.png"/>' alt="">
                  </div>
                  <div class="slide">
                    <img src='<c:url value="/img/dog4.png"/>' alt="">
                  </div>
                  <!--slide images end-->
                  <!--automatic navigation start-->
                  <div class="navigation-auto">
                    <div class="auto-btn1"></div>
                    <div class="auto-btn2"></div>
                    <div class="auto-btn3"></div>
                    <div class="auto-btn4"></div>
                  </div>
                  <!--automatic navigation end-->
                </div>
                <!--manual navigation start-->
                <div class="navigation-manual">
                  <label for="radio1" class="manual-btn"></label>
                  <label for="radio2" class="manual-btn"></label>
                  <label for="radio3" class="manual-btn"></label>
                  <label for="radio4" class="manual-btn"></label>
                </div>
                <!--manual navigation end-->
              </div>
        </div>
         <!--dog menu-->
         <div class="container">
            <div class="page-block dog">
                <div class="page-block-grid">
                  <div class="page-block-header">
                    <h2 class="page-block-header-title">Giống Chó Cảnh</h2>
                    <img src='<c:url value="/img/dog/header.png"/>' height="1459" width="730" alt="Giống Chó Cảnh"/>
                  </div>
                  <ul class="page-block-product">
                  <c:forEach var="item" items="${listdog}">
                    <li class="product">
                      <div class="product-card">
                        <a class="product-link" href="<c:url value="/Product?id=${item.getId()}&Loai=cho"/>">
                          <div class="product-card-top">
                            <img src='<c:url value="${item.anh}"/>' height="375" width="375" alt="Alaska"/>
                          </div>
                          <div class="product-card-content">
                            <h3 class="product-card-title">${item.getName()}</h3>
                          </div>
                        </a>
                      </div>
                    </li>
                    </c:forEach>               
                  </ul>
                </div>
            </div>

         </div>
              
           
</div>
    <!--image slider start Cat-->
<div class="slider">
    <div class="slide-C active">
      <img src='<c:url value="/img/cat1.jpg"/>' alt="">
    </div>
    <div class="slide-C">
      <img src='<c:url value="/img/cat2.jpg"/>' alt="">
    </div>
    <div class="slide-C">
      <img src='<c:url value="/img/cat3.jpg"/>' alt="">
    </div>
    <div class="slide-C">
      <img src='<c:url value="/img/cat4.jpg"/>' alt="">
    </div>
    <div class="navigation">
      <i class="fas fa-chevron-left prev-btn"></i>
      <i class="fas fa-chevron-right next-btn"></i>
    </div>
    <div class="navigation-visibility">
      <div class="slide-icon active"></div>
      <div class="slide-icon"></div>
      <div class="slide-icon"></div>
      <div class="slide-icon"></div>
    </div>
    </div>
    <!--cat-->
<div class="container">
        <div class="page-block cat">
            <div class="page-block-grid">
              <div class="page-block-header">
                <h2 class="page-block-header-title">Giống Mèo Cảnh</h2>
                <img src='<c:url value="/img/cat/header.jpg"/>' height="1459" width="730" alt="Giống Mèo Cảnh"/>
              </div>
              <ul class="page-block-product">
                <c:forEach var="item" items="${listcat}">
                    <li class="product">
                      <div class="product-card">
                        <a class="product-link" href="<c:url value="/Product?id=${item.getId()}&Loai=meo"/>">
                          <div class="product-card-top">
                            <img src='<c:url value="${item.anh}"/>' height="375" width="375" alt="Alaska"/>
                          </div>
                          <div class="product-card-content">
                            <h3 class="product-card-title">${item.getName()}</h3>
                          </div>
                        </a>
                      </div>
                    </li>
                    </c:forEach>               
              </ul>
            </div>
          </div>
    </div>
    <!--image slider start-->
<div class="slider-end">
      <div class="slider-ft">
        <div class="slides-ft">
          <!--radio buttons start-->
          <input type="radio" name="radio-btn" id="radio-1">
          <input type="radio" name="radio-btn" id="radio-2">
          <input type="radio" name="radio-btn" id="radio-3">
          <input type="radio" name="radio-btn" id="radio-4">
          <input type="radio" name="radio-btn" id="radio-5">
          <input type="radio" name="radio-btn" id="radio-6">
          <!--radio buttons end-->
          <!--slide images start-->
          <div class="slide-ft first">
            <img src='<c:url value="/img/7.jpg"/>' alt="">
          </div>
          <div class="slide-ft">
            <img src='<c:url value="/img/2.jpg"/>' alt="">
          </div>
          <div class="slide-ft">
            <img src='<c:url value="/img/3.jpg"/>' alt="">
          </div>
          <div class="slide-ft">
            <img src='<c:url value="/img/4.jpg"/>' alt="">
          </div>
          <div class="slide-ft">
            <img src='<c:url value="/img/5.jpg"/>' alt="">
          </div>
          <div class="slide-ft">
            <img src='<c:url value="/img/6.jpg"/>' alt="">
          </div>
          <!--slide images end-->
          <!--automatic navigation start-->
          <div class="navigation-auto-1">
            <div class="auto-btn1"></div>
            <div class="auto-btn2"></div>
            <div class="auto-btn3"></div>
            <div class="auto-btn4"></div>
            <div class="auto-btn5"></div>
            <div class="auto-btn6"></div>
          </div>
          <!--automatic navigation end-->
        </div>
        <!--manual navigation start-->
        <div class="navigation-manual-1">
          <label for="radio-1" class="manual-btn1"></label>
          <label for="radio-2" class="manual-btn1"></label>
          <label for="radio-3" class="manual-btn1"></label>
          <label for="radio-4" class="manual-btn1"></label>
          <label for="radio-5" class="manual-btn1"></label>
          <label for="radio-6" class="manual-btn1"></label>
        </div>
        <!--manual navigation end-->
      </div>
      <!--image slider end-->
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
<script>
    $(document).ready(function(){
      $(".c1").hover(function(){
          var id =$(this).attr('id');
          if(id==="c1"){
              $("#doggif").attr('src',"img/doghome.gif");

          }
        $('.nav-dog').css('display', 'block');
        $(".nav-dog").hover(function(){

      },function(){
        $('.nav-dog').css('display', 'none');
      })
});
});
    $(document).ready(function(){
        $(".meo").hover(function(){
            var id =$(this).attr('id');
            if(id==="c2"){
                $("#catgif").attr('src',"img/cathome.gif");

            }
            $('.nav-cat').css('display', 'block');
            $(".nav-cat").hover(function(){

            },function(){
                $('.nav-cat').css('display', 'none');
            })
        });
    });
</script>
</body>
<script type="text/javascript">
    var counter = 1;
    setInterval(function(){
      document.getElementById('radio' + counter).checked = true;
      counter++;
      if(counter > 4){
        counter = 1;
      }
    }, 5000);
    </script>
<script type="text/javascript">
            const slider = document.querySelector(".slider");
            const nextBtn = document.querySelector(".next-btn");
            const prevBtn = document.querySelector(".prev-btn");
            const slides = document.querySelectorAll(".slide-C");
            const slideIcons = document.querySelectorAll(".slide-icon");
            const numberOfSlides = slides.length;
            var slideNumber = 0;
        
            //image slider next button
            nextBtn.addEventListener("click", () => {
              slides.forEach((slide) => {
                slide.classList.remove("active");
              });
              slideIcons.forEach((slideIcon) => {
                slideIcon.classList.remove("active");
              });
        
              slideNumber++;
        
              if(slideNumber > (numberOfSlides - 1)){
                slideNumber = 0;
              }
        
              slides[slideNumber].classList.add("active");
              slideIcons[slideNumber].classList.add("active");
            });
        
            //image slider previous button
            prevBtn.addEventListener("click", () => {
              slides.forEach((slide) => {
                slide.classList.remove("active");
              });
              slideIcons.forEach((slideIcon) => {
                slideIcon.classList.remove("active");
              });
        
              slideNumber--;
        
              if(slideNumber < 0){
                slideNumber = numberOfSlides -1;
              }
        
              slides[slideNumber].classList.add("active");
              slideIcons[slideNumber].classList.add("active");
            });
        
            //image slider autoplay
            var playSlider;
        
            var repeater = () => {
              playSlider = setInterval(function(){
                slides.forEach((slide) => {
                  slide.classList.remove("active");
                });
                slideIcons.forEach((slideIcon) => {
                  slideIcon.classList.remove("active");
                });
        
                slideNumber++;
        
                if(slideNumber > (numberOfSlides - 1)){
                  slideNumber = 0;
                }
        
                slides[slideNumber].classList.add("active");
                slideIcons[slideNumber].classList.add("active");
              }, 4000);
            }
            repeater();
        
            //stop the image slider autoplay on mouseover
            slider.addEventListener("mouseover", () => {
              clearInterval(playSlider);
            });
        
            //start the image slider autoplay again on mouseout
            slider.addEventListener("mouseout", () => {
              repeater();
            });
            </script>
</html>