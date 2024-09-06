<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aravind Store</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</head>

<body>
    <%
    String name=(String)session.getAttribute("username"); 
    if(name == null)
    {%>
        <jsp:forward page="index.html"/>
        <%
    }
    %>
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="font-weight: bold;">Aravind Store &ensp;&ensp;&ensp;&ensp;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-link active" href="#">&ensp;&ensp;Home&ensp;&ensp;<span
                        class="sr-only">(current)</span></a>
                <a class="nav-link active" href="products.html">&ensp;&ensp;Products&ensp;&ensp;</a>
                <a class="nav-link active" href="profile.jsp">&ensp;&ensp;My Profile&ensp;&ensp;</a>
                <a class="nav-link active" href="myorders.jsp">&ensp;&ensp;My Orders&ensp;</a>
                <form action="logout.jsp" method="post">
                <input class="btn btn-danger" type="submit" value="Log Out">
            </form>
                <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
            </div>
        </div>
    </nav>
    <div style="padding-top:80px;">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">-</li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1">-</li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2">-</li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100"
                        src="https://assets.ajio.com/cms/AJIO/WEB/02052023-UHP-D-main-P7-ThomasScottHummel-FLat60.jpg"
                        height="450vh" alt="First slide">
                    <div class="carousel-caption d-none d-md-block text-dark">
                        <h2>Best Quality Items</h2>
                        <p>brands</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                        src="https://assets.ajio.com/cms/AJIO/WEB/02052023-UHP-D-main-P5-MuftiUSPA-upto50.jpg"
                        height="450vh" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block text-primary">
                        <h5>latest models </h5>
                        <p>clasic or casual for every persion.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="https://assets.ajio.com/cms/AJIO/WEB/Top-banner_Desktop.gif"
                        height="450vh" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block text-primary">
                        <h5>Best offers</h5>
                        <p>offer colses soon.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev " href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="text-dark" style="font-size:50px;" aria-hidden="true">&lt</span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next " href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="text-dark" style="font-size:50px;" aria-hidden="true">&gt</span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div  style="background-color: #e8f5ff;">
            <div class=" container mb-4 pt-5 bg-info mt-4">
                <h3 class="">Up to 66% off | Deal of the day</h3>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3 pt-2">
                        <img src="https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQENCJXpRH6TkzjuSTihbHApG0wnofIA4Imr427D3x7MAp1a8ZKuHlc_N_hYEQbsANLEZGVZEKXnF1OpDwD-g-PoZUOaVFwJyeFc5jKNadg&usqp=CAE
                      " width="100%" height="400vh">
                        <p>Reebok Torn jeans</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9qiB8-NqdLfWaEgALE5XEKBvbRNHjTH2yiQ&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Twills Shirt</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJlB0xuqVFHVuIVAV0vN1jdqB_cKifXEgJBA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLrGqcBfpnYocwJFe9J83uiy8COlTiWkZLsA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                </div>
            </div>
            <!-- pants -->
            <div class=" container border bg-warning mb-3">
                <h3 class="mt-2">Best Selling pants</h3>
                <div class="row ">
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://m.media-amazon.com/images/I/51XO5W+3wAL._UY550_.jpg" width="100%"
                            height="400vh">
                        <p>cargo Pant</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://i.pinimg.com/originals/0c/aa/f3/0caaf3b6a90f6f0051736d28bdabbd5d.jpg"
                            width="100%" height="400vh">
                        <p>Black pant</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTo6HcKC-2s1fzqrvZvxLvUz1Eqc1UrsZQqQ&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Trouser</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIVdvUlub2Nbnf0lHU2amjJ7TYvtuP0vlFHw&usqp=CAU
                        " width="100%" height="400vh">
                        <p>White pant</p>
                    </div>
                </div>
            </div>
            <!-- Shirts -->
            <div class=" container bg-info mb-3">
                <h3 class="mt-2">Best selling Shirts</h3>
                <div class="row ">
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLrGqcBfpnYocwJFe9J83uiy8COlTiWkZLsA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Cheked Shirt</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpKHsT0JMMS-KHyKuNuJR1U2___Mpmv8O58w&usqp=CAU"
                            width="100%" height="400vh">
                        <p>navy Blue shirt</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS6X2vAVCnWXEyjXvmszdaLGj9vI_tpO7zcQ&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Plain shirt</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbWQFtbJLwvUdbSuezp1Bx5-Xqldqtr44UrA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Formal Shirt</p>
                    </div>
                </div>
            </div>
            <!-- t shirts -->
            <div class="container mb-3 bg-danger">
                <h3 class="mt-2">Best Selling T-Shirts</h3>
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQEH33bCfAWFMeTVMlAIjrGO-cgu7ARA7gAA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Green hoddie/p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMHb0VUj9omjjuQ58rfeVY0AGKRVBWLSJSSw&usqp=CAU"
                            width="100%" height="400vh">
                        <p>Blue Hoddie</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR6ouQF2p7aZZ7RmnPQyn8UsQ8dN6HhBBZhA&usqp=CAU"
                            width="100%" height="400vh">
                        <p>White Hoddiee</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl1PM3gka8eT-trMBwiC3FYioYOsZXcXi-2A&usqp=CAU
                      " width="100%" height="400vh">
                        <p>Yellow Shirt</p>
                    </div>
                </div>
            </div>
            <!-- shorts -->

            <div class="bg-success container">
                <h3 class="mt-2">Best Selling casuals</h3>
                <div class="row ">
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT87NbIll-7t8htY50hcWGIrDhCZPIJ696bwg&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3o4XpwWb474c9cNIaZ2TJtqLS440T-5lx5w&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgpzsZWy2VzOHR4e4rVtnmyrhSgKCf10bH-A&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-3 ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQwWGYjSfLv9VcwNy043n_2-AJZKeXIPyvig&usqp=CAU"
                            width="100%" height="400vh">
                        <p>up to 49.8% off |on home applications</p>
                    </div>
                </div>
            </div>
            <div class="d-flex flex-row justify-content-around pt-5 bg-secondary">
                <div class="d-flex flex-column justify-content-start">
                    <h4>Contac Us</h4>
                    <p>Aravind Stores    office,<br>Mylavaram<br>NTR District<br>Vijayawada<br>Andhra Pradesh<br>India.</p>
                </div>
                <div class="d-flex flex-column justify-content-start">
                    <h4>Quick Links</h4>
                    <a>Home</a>
                    <a>Sign In</a>
                    <a>Login</a>
                </div>
                <div class="d-flex flex-column justify-content-start">
                    <h4>Quick Links</h4>
                    <a>Facebook</a>
                    <a>Instagram</a>
                    <a>Twitter</a>
                    <a>LinkedIn</a>
                </div>
        
            </div>
            <div class="d-flex flex-row justify-content-center bg-secondary">
                <h4>Created by <img src="https://www.freepnglogos.com/uploads/copyright/copyright-symbol-intellectual-vector-graphic-pixabay-34.png" height="25px" width="25px"/>K.Aravind</h4>
            </div>
</body>

</html>