	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- custom css file link  -->
     <link rel="stylesheet" href="<c:url value="/css/Admin.css"/>">
     <script type="text/javascript" src='<c:url value="/JS/jquery.min.js"/>'>
  
  </script>
    <title>Admin</title>
</head>
<body>
    <div class="container">
        <div class="navigation active">
            <ul>
                <li>
                    <a href="">
                        <span class="icon"><img src='<c:url value="/img/PETSHOP.png"/>' alt=""></span>
                        <span class="title">PetPhop</span>
                    </a> 
                </li>
                <li>
                    <a href="">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Customers</span>
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/managerDog"/>">
                        <span class="icon"><i class="fa-solid fa-dog"></i></span>
                        <span class="title">Quản lý Chó</span>
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/managerCat"/>">
                        <span class="icon"><i class="fa-solid fa-cat"></i></span>
                        <span class="title">Quản lý mèo</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="icon"><ion-icon name="people-outline"></ion-icon></span>
                        <span class="title">Help</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">Setting</span>
                    </a>
                </li>
                <li>
                    <a href="../Signin.html">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">Sign out</span>
                    </a>
                </li>
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
                    <label>
                        <input type="text" placeholder="Search...">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>
                <!-- user Img -->
                <div class="user">
                    <img src="img/ad1.jpg" alt="">
                </div>
            </div>
            <!-- cards -->
            <div class="carBox">
                <div class="card">
                    <div>
                        <div class="numbers"> 1.553</div>
                        <div class="cardName">Views</div>
                    </div>
                    <div class="iconBx">
                        <i class="far fa-eye"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers"> 80</div>
                        <div class="cardName">Sales</div>
                    </div>
                    <div class="iconBx">
                        <i class="fal fa-shopping-cart"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers"> 553</div>
                        <div class="cardName">Comment</div>
                    </div>
                    <div class="iconBx">
                        <i class="far fa-comments"></i>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers"> 7.553$</div>
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
                        <h2> Recent Orders</h2>

                        <div class="iconcheck">
                            <button><i class="fa-solid fa-pen"></i></button>
                            <button><i class="fa-solid fa-square-plus"></i></button>
                            <button><i class="fa-solid fa-trash-can"></i></button>
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
                           <tr>
                        <td>Chó AlasKa</td>
                        <td> <img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></td>
                        <td>1200.000$</td>
                        <td><span class="status delivered">Delivered</span></td>
                        <td><input type="checkbox" class="vehicle" ></td>
                    </tr>
                    <tr>
                        <td>Chó AlasKa</td>
                        <td> <img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></td>
                        <td>1200.000$</td>
                        <td><span class="status delivered">Delivered</span></td>
                        <td><input type="checkbox" class="vehicle" ></td>
                    </tr>
                    <tr>
                        <td>Chó Poodle</td>
                        <td> <img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></td>
                        <td>1200.000$</td>
                        <td><span class="status return">Return</span></td>
                        <td><input type="checkbox" class="vehicle" ></td>
                    </tr>
                    <tr>
                        <td>Chó AlasKa</td>
                        <td> <img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></td>
                        <td>1200.000$</td>
                        <td><span class="status inprogress">Inprogress</span></td>
                        <td><input type="checkbox" class="vehicle" ></td>
                    </tr>

                        </tbody>
                    </table>
                </div>
                 <!-- customs -->
                 <div class="recentCustomers">
                     <div class="cardHeader">
                         <h2>Recent Customers</h2>
                     </div>
                     <table>
                         <tr>
                             <td style="width:60px"><div class="imgBx"><img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></div></td>
                             <td><h4>Jennie<br><span>Korea</span></h4></td>
                         </tr>
                         <tr>
                             <td style="width:60px"><div class="imgBx"><img src='<c:url value="/img/dog/ad1.jpg"/>' alt=""></div></td>
                             <td><h4>Jennie<br><span>Korea</span></h4></td>
                         </tr>
                       
                     </table>
                 </div>
            </div>
        </div>
    </div>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <script>
        // menu Toggle
        let toggle = document.querySelector('.toggle');
        let navigation = document.querySelector('.navigation');
        let main = document.querySelector('.main');
        toggle.onclick = function(){
            navigation.classList.toggle('active');
            main.classList.toggle('active');
        }
        
    </script>
</body>

</html>