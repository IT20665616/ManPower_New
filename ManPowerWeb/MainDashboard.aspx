﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainDashboard.aspx.cs" Inherits="ManPowerWeb.MainDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department of Manpower and Employment</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet" />

    <!-- Favicons -->
    <link rel="icon" type="image/x-icon" href="img/favicon.png" />

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet" />
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>


    <style type="text/css">
        .card:hover {
            box-shadow: 5px 6px 6px 2px #e9ecef;
            transform: scale(1.1);
        }

        .card {
            transition: all 0.2s ease;
            cursor: pointer;
        }
    </style>


</head>
<body style="background-image: url(img/bgimg.jpeg); background-repeat: no-repeat; background-size: cover;">
    <form id="form1" runat="server">
        <div class="top-row mb-5">
            <div class="col-12">
                <img src="img/header2.png" class="mb-3 ml-5 mt-2" style="height: 85%; width: 30em" />
            </div>
        </div>

        <div class="container" style="height: 500px;">
            <div class="row row-cols-1 row-cols-md-4 ">
                <div class="col" style="height: 500px">
                    <div class="card border-left-primary" style="margin-top: 200px;">
                        <img src="img/HR.jpg" class="card-img-top"
                            alt="Skyscrapers" />
                        <div class="card-body">
                            <a href="Dashboard.aspx" style="text-decoration: none;">
                                <h5 class="card-title text-center">HUMAN RESOURCE</h5>
                            </a>
                        </div>
                        <div class="card-footer" style="background-image: url(https://mdbcdn.b-cdn.net/img/new/slides/003.webp)">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-left-warning">
                        <div class=" bg-image hover-zoom">
                            <img src="img/Procu.jpg" class="card-img-top"
                                alt="Skyscrapers" />
                        </div>

                        <div class="card-body">
                            <a href="SessionManager.aspx" style="text-decoration: none;">

                                <h5 class="card-title text-center">PROCUREMENT</h5>
                            </a>

                        </div>
                        <div class="card-footer" style="background-image: url(https://mdbcdn.b-cdn.net/img/new/slides/003.webp)">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-left-success" style="margin-top: 200px">
                        <img src="img/Finance.jpg" class="card-img-top"
                            alt="Skyscrapers" />
                        <div class="card-body">
                            <a href="Dashboard.aspx" style="text-decoration: none;">
                                <h5 class="card-title text-center">FINANCE</h5>
                            </a>
                        </div>
                        <div class="card-footer" style="background-image: url(https://mdbcdn.b-cdn.net/img/new/slides/003.webp)">
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card border-left-dark">
                        <img src="img/planning.jpg" class="card-img-top"
                            alt="Skyscrapers" />
                        <div class="card-body">
                            <a href="Dashboard.aspx" style="text-decoration: none;">

                                <h5 class="card-title text-center">PLANNING</h5>
                            </a>

                        </div>
                        <div class="card-footer" style="background-image: url(https://mdbcdn.b-cdn.net/img/new/slides/003.webp)">
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>


</html>


