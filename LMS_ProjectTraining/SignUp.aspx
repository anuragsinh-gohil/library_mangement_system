<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LMS_ProjectTraining.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="LogoImg/logoIcon.ico" />
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

    <%--7-sweetalert--%>
    <link href="SweetAlert/Styles/sweetalert.css" rel="stylesheet" />
    <script src="SweetAlert/Scripts/sweetalert.min.js"></script>

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
                        <a class="btn btn-sm btn-outline-light" href="Login.aspx">Sign In</a>
                    </div>
                </div>
            </nav>

            <!-- Header -->
            <div class="bg-primary text-white text-center py-5 mb-4 shadow">
                <h1 class="display-4 font-weight-bold">Library Management System</h1>
                <p class="lead">Building community. Inspiring readers. Expanding book access!</p>
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

                    <!-- Sign-Up Form -->
                    <div class="col-sm-9 col-md-10">
                        <div class="card shadow border-0">
                            <div class="card-body">
                                <h2 class="h4 font-weight-bold mb-4">Create New Account</h2>
                                <!-- Nav Tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#signup">Sign Up</a>
                                    </li>
                                </ul>

                                <!-- Tab Pane -->
                                <div class="tab-content mt-3">
                                    <div id="signup" class="tab-pane active">
                                        <div class="row justify-content-center">
                                            <div class="col-md-10">
                                                <div class="card shadow-sm border-0">
                                                    <div class="card-body">
                                                        <div class="text-center mb-4">
                                                            <img width="150" src="LogoImg/sign_up.png" alt="Sign Up Icon" class="mb-3" />
                                                            <h3 class="h5 font-weight-bold">Member/User Sign Up</h3>
                                                            <hr />
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Member ID</label>
                                                                    <asp:TextBox ID="txtMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Password</label>
                                                                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*enter valid password" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Full Name</label>
                                                                    <asp:TextBox ID="txtFullName" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*enter full name" ControlToValidate="txtFullName" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Date of Birth</label>
                                                                    <asp:TextBox ID="txtDOB" CssClass="form-control" placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Contact No.</label>
                                                                    <asp:TextBox ID="txtContactNO" CssClass="form-control" placeholder="Contact No." runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Email ID</label>
                                                                    <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*enter valid email" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">State</label>
                                                                    <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                                                        <asp:ListItem Text="Assam" Value="Assam" />
                                                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                                                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                                                        <asp:ListItem Text="Goa" Value="Goa" />
                                                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">City</label>
                                                                    <asp:TextBox ID="txtCity" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">PIN</label>
                                                                    <asp:TextBox ID="txtPIN" CssClass="form-control" placeholder="PIN Code" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div class="form-group">
                                                                    <label class="font-weight-bold">Full Address</label>
                                                                    <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row justify-content-center">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnSignup" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="text-center">
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
                            <p>© 2025 CoderBaba Library. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>
