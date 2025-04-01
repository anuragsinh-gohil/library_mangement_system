<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LMS_ProjectTraining.Login" %>

<!DOCTYPE html>
<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="shortcut icon" href="LogoImg/logoIcon.ico"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%--1-Bootstrap CSS--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <%--2-Datatabel CSS--%>
    <link href="datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%--3-Fontawesome CSS--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <%--4-Jquery jS--%>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--5-Popper JS--%>
    <script src="bootstrap/js/popper.min.js"></script>

    <%--6-Bootstrap Js--%>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<form id="form1" runat="server">
        <div>
            <!-- Navbar -->
            <nav class="navbar navbar-expand-sm navbar-dark bg-primary shadow-sm">
                <a class="navbar-brand" href="default.aspx">
                    <img src="LogoImg/logoIcon.ico" alt="logo" width="49" height="49" class="d-inline-block align-top" /> LMS Application
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="default.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="#">Library Collection</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="#">Archives</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="#">Publications</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="#">Gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link font-weight-bold" href="#">Contact Us</a>
                        </li>
                    </ul>
                    <div class="ml-auto">
                        <a id="signup" class="btn btn-sm btn-outline-light" href="SignUp.aspx">Sign Up</a>
                    </div>
                </div>
            </nav>

            <!-- Header Section -->
            <div class="bg-primary text-white text-center py-5 mb-4 shadow">
                <h1 class="display-4 font-weight-bold">Library Management System</h1>
                <p class="lead">Building community. Inspiring readers. Expanding book access! Add</p>
            </div>

            <!-- Main Content -->
            <div class="container-fluid px-4">
                <div class="row">
                    <!-- Sidebar -->
                    <div class="col-sm-3 col-md-2 mb-4">
                        <div class="card shadow-sm border-0 h-100">
                            <div class="card-body">
                                <h2 class="h5 font-weight-bold">Filter</h2>
                                <p class="text-muted">Top Search</p>
                                <ul class="nav nav-pills flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link active bg-primary text-white" href="#">Active</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Fiction</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Non-Fiction</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link disabled" href="#">Disabled</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Login Panel -->
                    <div class="col-sm-9 col-md-10">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <h2 class="h4 font-weight-bold mb-4">Login Panel</h2>
                                <!-- Nav Tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#home">User Login</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#menu1">Admin Login</a>
                                    </li>
                                </ul>

                                <!-- Tab Panes -->
                                <div class="tab-content mt-3">
                                    <!-- User Login -->
                                    <div id="home" class="tab-pane active">
                                        <div class="row justify-content-center">
                                            <div class="col-md-6">
                                                <div class="card shadow-sm border-0">
                                                    <div class="card-body text-center">
                                                        <img width="150" src="LogoImg/user.png" alt="User Icon" class="mb-3" />
                                                        <h3 class="h5 font-weight-bold">Member/User Login</h3>
                                                        <hr />
                                                        <div class="form-group">
                                                            <label class="font-weight-bold">Member ID</label>
                                                            <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="font-weight-bold">Password</label>
                                                            <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                        </div> 
                                                        <div class="form-group">
                                                            <asp:Button ID="btnLogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                                        </div>
                                                        <div class="form-group">
                                                            <a href="SignUp.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                                        </div>
                                                        <a href="default.aspx" class="text-muted"><< Back to Home</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Admin Login -->
                                    <div id="menu1" class="tab-pane fade">
                                        <div class="row justify-content-center">
                                            <div class="col-md-6">
                                                <div class="card shadow-sm border-0">
                                                    <div class="card-body text-center">
                                                        <img width="150" src="LogoImg/admin.png" alt="Admin Icon" class="mb-3" />
                                                        <h3 class="h5 font-weight-bold">Admin Login</h3>
                                                        <hr />
                                                        <div class="form-group">
                                                            <label class="font-weight-bold">Admin ID</label>
                                                            <asp:TextBox ID="txtAdminID" CssClass="form-control" placeholder="Admin ID" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="font-weight-bold">Password</label>
                                                            <asp:TextBox ID="txtAdminPass" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                        </div>
                                                        <div class="form-group">
                                                            <asp:Button ID="btnAdminLogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Admin Login" OnClick="btnAdminLogin_Click" />
                                                        </div>
                                                        <div class="form-group">
                                                            <a href="default.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                                        </div>
                                                        <a href="default.aspx" class="text-muted"><< Back to Home</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="bg-dark text-white text-center mt-5 py-5 shadow">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <h4 class="font-weight-bold">Quick Links</h4>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-white">Payment Center</a></li>
                                <li><a href="#" class="text-white">News and Updates</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4 mb-3">
                            <h4 class="font-weight-bold">Resources</h4>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-white">Website</a></li>
                                <li><a href="#" class="text-white">Disclaimer</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4 mb-3">
                            <h4 class="font-weight-bold">Follow Us</h4>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-white">Facebook</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <p>© 2025 Library System. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>
