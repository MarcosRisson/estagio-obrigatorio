<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
                    <div class="col-12 bg-white pt-5">
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
                                        <a class="nav-link home-link" href="index.php">Home</a>
                                      </li>
                                      <li class="nav-item">
                                        <a class="nav-link" href="index.php?listar_produtos=true">Listar Produtos</a>
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
                <main class="row">

                    <!-- Slider -->
                    <div class="col-12 px-0">
                        <div id="slider" class="carousel slide w-100" data-bs-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-bs-target="#slider" data-bs-slide-to="0" class="active"></li>
                                <li data-bs-target="#slider" data-bs-slide-to="1"></li>
                                <li data-bs-target="#slider" data-bs-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img src="images/slider-1.jpeg" class="slider-img">
                                </div>
                                <div class="carousel-item">
                                    <img src="images/slider-2.jpeg" class="slider-img">
                                </div>
                                <div class="carousel-item">
                                    <img src="images/slider-3.jpeg" class="slider-img">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <!-- Slider -->

                    <?php
                    include 'db_connection.php';

                    
                    if (isset($_GET['listar_produtos']) && $_GET['listar_produtos'] == 'true') {
                        $query = "SELECT * FROM produtos";
                        $result = pg_query($db, $query);
                    
                        if ($result) {
                            echo "<div class='mt-4'></div>";
                    
                            // Verifica se há produtos
                            if (pg_num_rows($result) > 0) {
                                echo "<div class='row'>";
                                while ($row = pg_fetch_assoc($result)) {
                                    echo "<div class='col-lg-2 col-md-3 mb-3'> <!-- Ajuste nas classes de coluna -->
                                        <div class='card h-100 text-center'>
                                            <img class='card-img-top' src='/ecommerce/images/{$row['imagem_produto']}' alt='Imagem do Produto' style='max-width: 100%; margin: auto;'>
                                            <div class='card-body'>
                                                <h5 class='card-title'>{$row['nome_produto']}</h5>
                                                <p class='card-text'>{$row['cor_produto']}</p>
                                                <p class='card-text'>Tamanho: {$row['tamanho_produto']}</p>
                                                <p class='card-text'>Marca: {$row['marca_produto']}</p>
                                                <p class='card-text'>Modelo: {$row['modelo_produto']}</p>
                                                <p class='card-text'>Preço: R$ {$row['preco_produto']}</p>
                                                <button class='btn btn-outline-dark'>Adicionar ao Carrinho</button>
                                            </div>
                                        </div>
                                    </div>";
                                }
                                echo "</div>";
                            } else {
                                echo "<p>Não há produtos cadastrados.</p>";
                            }
                    
                            pg_free_result($result);
                        } else {
                            echo "Erro na consulta: " . pg_last_error($db);
                        }
                    
                        pg_close($db);
                    }
                    ?>


                    <div class="col-12 py-3 bg-light d-sm-block d-none">
                        <div class="row">
                            <div class="col-lg-3 col ms-auto large-holder">
                                <div class="row">
                                    <div class="col-auto ms-auto large-icon">
                                        <i class="fas fa-money-bill"></i>
                                    </div>
                                    <div class="col-auto me-auto large-text">
                                        Melhor Preço
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col large-holder">
                                <div class="row">
                                    <div class="col-auto ms-auto large-icon">
                                        <i class="fas fa-truck-moving"></i>
                                    </div>
                                    <div class="col-auto me-auto large-text">
                                        Entrega Rápida
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col me-auto large-holder">
                                <div class="row">
                                    <div class="col-auto ms-auto large-icon">
                                        <i class="fas fa-check"></i>
                                    </div>
                                    <div class="col-auto me-auto large-text">
                                        Produtos Genuínos
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- Main Content -->
            </div>
        </div>

    </div>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
</body>

</html>
