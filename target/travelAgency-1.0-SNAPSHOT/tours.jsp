<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="bootstrap-5.0.1-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles/sidebars.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row">
        <!-- filters -->
        <div class="col-md-3">
            <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
                <!-- <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
                  <span class="fs-5 fw-semibold">Collapsible</span>
                </a> -->
                <h4 class="border-bottom pb-3 mb-3">Fiters</h4>
                <ul class="list-unstyled ps-0">
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#home-collapse" aria-expanded="true">
                            Tour type
                        </button>
                        <div class="collapse show" id="home-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li><a href="#" class="link-dark rounded">Vacation</a></li>
                                <li><a href="#" class="link-dark rounded">Excursion</a></li>
                                <li><a href="#" class="link-dark rounded">Shopping</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#dashboard-collapse" aria-expanded="false">
                            Dashboard
                        </button>
                        <div class="collapse" id="dashboard-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li><a href="#" class="link-dark rounded">Overview</a></li>
                                <li><a href="#" class="link-dark rounded">Weekly</a></li>
                                <li><a href="#" class="link-dark rounded">Monthly</a></li>
                                <li><a href="#" class="link-dark rounded">Annually</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#orders-collapse" aria-expanded="false">
                            Location
                        </button>
                        <div class="collapse" id="orders-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li><a href="#" class="link-dark rounded">New</a></li>
                                <li><a href="#" class="link-dark rounded">Processed</a></li>
                                <li><a href="#" class="link-dark rounded">Shipped</a></li>
                                <li><a href="#" class="link-dark rounded">Returned</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="border-top my-3"></li>
                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                                data-bs-target="#account-collapse" aria-expanded="false">
                            Account
                        </button>
                        <div class="collapse" id="account-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                <li><a href="#" class="link-dark rounded">New...</a></li>
                                <li><a href="#" class="link-dark rounded">Profile</a></li>
                                <li><a href="#" class="link-dark rounded">Settings</a></li>
                                <li><a href="#" class="link-dark rounded">Sign out</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-- tours -->
        <div class="col-md-7">

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>

            <div class="container bg-light border rounded-3 p-3 mb-4">
                <div class="row">
                    <div class="col-md-5">
                        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"
                             data-bs-interval="false">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/400x400.png" class="d-block w-100" alt="tour image">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button"
                                    data-bs-target="#carouselExampleControls"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <h2>Tour name</h2>
                        <br>
                        <p>Hotel rate: </p>
                        <p>Location: </p>
                        <p>Persons: </p>
                        <br>

                        <button class="btn btn-outline-secondary" type="button" data-bs-toggle="collapse"
                                data-bs-target="#tourDescription" aria-expanded="false" aria-controls="tourDescription">
                            Tour description
                        </button>
                    </div>
                    <div class="col-md-2">
                        <small class="text-muted">price</small>
                    </div>

                </div>
                <div class="row">
                    <div class="collapse" id="tourDescription">
                        <p class="p-2">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga voluptatum, hic sequi
                            excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fuga
                            voluptatum, hic
                            sequi excepturi vero
                            harum dignissimos eveniet itaque optio dicta ipsa impedit sint aliquid. Corporis praesentium
                            omnis
                            perspiciatis ad! Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo labore quae
                            deserunt
                            facilis hic esse voluptatum consectetur nam temporibus, quibusdam nulla cupiditate ut facere
                            a quia.
                            Eaque
                            non optio cumque.
                        </p>
                    </div>

                </div>


            </div>


            <nav aria-label="...">
                <ul class="pagination justify-content-center">
                    <li class="page-item active" aria-current="page">
                        <span class="page-link">1</span>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                </ul>
            </nav>
        </div>

    </div>

</div>
<script src="bootstrap-5.0.1-dist/js/bootstrap.bundle.js"></script>
</body>
</html>
