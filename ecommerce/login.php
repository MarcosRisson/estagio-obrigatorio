<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Amme Shoes</title>

    <link href="//fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container-fluid">
        <div class="row min-vh-100">
            <div class="col-12">
                <header class="row">
                    <!-- Top Nav -->
                    <div class="col-12 bg-dark py-2 d-md-block d-none">
                        <div class="row">
                            <div class="col-auto me-auto">
                                <ul class="top-nav">
                                    <li>
                                        <a href="tel:+123-456-7890"><i class="fa fa-phone-square me-2"></i>(44)99903-6878</a>
                                    </li>
                                    <li>
                                        <a href="mailto:mail@ecom.com"><i class="fa fa-envelope me-2"></i>adramandelli@gmail.com</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-auto">
                                <ul class="top-nav">
                                    <li>
                                        <a href="register.php"><i class="fas fa-user-edit me-2"></i>Registrar</a>
                                    </li>
                                    <li>
                                        <a href="login.php"><i class="fas fa-sign-in-alt me-2"></i>Login</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Top Nav -->

                    <!-- Header -->
                    <div class="col-12 bg-white pt-4">
                        <div class="row">
                            <div class="col-lg-auto">
                                <div class="site-logo text-center text-lg-left">
                                    <a href="index.php">AMME SHOES</a>
                                </div>
                            </div>
                            <div class="col-lg-5 mx-auto mt-4 mt-lg-0">
                                <form action="#">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="search" class="form-control border-dark" placeholder="Procurar..." required>
                                            <button class="btn btn-outline-dark"><i class="fas fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-lg-auto text-center text-lg-left header-item-holder">
                                <a href="#" class="header-item">
                                    <i class="fas fa-heart me-2"></i><span id="header-favorite">0</span>
                                </a>
                                <a href="cart.php" class="header-item">
                                    <i class="fas fa-shopping-bag me-2"></i><span id="header-qty" class="me-3">0</span>
                                    <i class="fas fa-money-bill-wave me-2"></i><span id="header-price">R$ 0,00</span>
                                </a>
                            </div>
                        </div>

                         <!-- Nav -->
                         <div class="row">
                            <nav class="navbar navbar-expand-lg navbar-light bg-white col-12">
                                <button class="navbar-toggler d-lg-none border-0" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="mainNav">
                                    <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.php">Listar Produtos <span class="sr-only">(current)</span></a>
                                        </li>                                       
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        
                        <!-- Nav -->

                    </div>
                    <!-- Header -->

                </header>
            </div>

            <div class="col-12">
                <!-- Main Content -->
                <div class="row">
                    <div class="col-12 mt-3 text-center text-uppercase">
                        <h2>Login</h2>
                    </div>
                </div>

                <main class="row">
                    <div class="col-lg-4 col-md-6 col-sm-8 mx-auto bg-white py-3 mb-4">
                        <div class="row">
                            <div class="col-12">
                                <form>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" id="email" class="form-control" required>
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" id="password" class="form-control" required>
                                    </div>
                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" id="remember" class="form-check-input">
                                            <label for="remember" class="form-check-label ml-2">Remember Me</label>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <button type="submit" class="btn btn-outline-dark">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </main>
                <!-- Main Content -->
            </div>

            <div class="col-12 align-self-end">
                <!-- Footer -->
                <footer class="row">
                    <div class="col-12 bg-dark text-white pb-3 pt-5">
                        <div class="row">
                            <div class="col-lg-2 col-sm-4 text-center text-sm-left mb-sm-0 mb-3">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="footer-logo">
                                            <a href="index.php">AMME SHOES</a>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <address>
                                         CIANORTE - PARANÁ
                                        </address>
                                    </div>
                                    <div class="col-12">
                                        <a href="https://www.instagram.com/ammeshoes_/" class="social-icon"><i class="fab fa-instagram"></i></a>                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-8 text-center text-sm-left mb-sm-0 mb-3">
                                <div class="row">
                                    <div class="col-12 text-uppercase">
                                        <h4>QUEM NÓS SOMOS?</h4>
                                    </div>
                                    <div class="col-12 text-justify">
                                        <p>Somos uma empresa de calçados online localizada em Cianorte - PR. Enviamos para todo Brasil.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col-sm-3 col-5 ms-lg-auto ms-sm-0 ms-auto mb-sm-0 mb-3">
                                <div class="row">
                                    <div class="col-12 text-uppercase">
                                        <h4>LINKS RÁPIDOS</h4>
                                    </div>
                                    <div class="col-12">
                                        <ul class="footer-nav">
                                            <li>
                                                <a href="#">Home</a>
                                            </li>
                                            <li>
                                                <a href="#">Contate - Nos</a>
                                            </li>                                           
                                            <li>
                                                <a href="#">Politica de Privacidade</a>
                                            </li>
                                            <li>
                                                <a href="#">Termos & Condições</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-1 col-sm-2 col-4 me-auto mb-sm-0 mb-3">
                                <div class="row">
                                    <div class="col-12 text-uppercase text-underline">
                                        <h4>Ajuda</h4>
                                    </div>
                                    <div class="col-12">
                                        <ul class="footer-nav">
                                            <li>
                                                <a href="#">FAQs</a>
                                            </li>
                                            <li>
                                                <a href="#">Envio</a>
                                            </li>
                                            <li>
                                                <a href="#">Devoluções</a>
                                            </li>
                                            <li>
                                                <a href="#">Pedido</a>
                                            </li>                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6 text-center text-sm-left">
                                <div class="row">
                                    <div class="col-12 text-uppercase">
                                        <h4>Newsletter</h4>
                                    </div>
                                    <div class="col-12">
                                        <form action="#">
                                            <div class="mb-3">
                                                <input type="text" class="form-control" placeholder="Informe seu e-mail..." required>
                                            </div>
                                            <div class="mb-3">
                                                <button class="btn btn-outline-light text-uppercase">Se Inscreva</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- Footer -->
            </div>

    </div>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>
</html>