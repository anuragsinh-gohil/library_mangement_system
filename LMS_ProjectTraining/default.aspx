<%@ Page Title="Home page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LMS_ProjectTraining._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid px-0">
        <!-- Carousel Section -->
        <div class="row no-gutters">
            <div id="libraryCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#libraryCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#libraryCarousel" data-slide-to="1"></li>
                    <li data-target="#libraryCarousel" data-slide-to="2"></li>
                </ul>

                <!-- The Slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="SlideImg/lms1.png" alt="Library Welcome" class="d-block w-100 img-fluid">
                        <div class="carousel-caption d-none d-md-block text-shadow">
                            <h5 class="font-weight-bold">Welcome to Our Library</h5>
                            <p>Explore a world of knowledge.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/lms2.jpg" alt="New Arrivals" class="d-block w-100 img-fluid">
                        <div class="carousel-caption d-none d-md-block text-shadow">
                            <h5 class="font-weight-bold">New Arrivals</h5>
                            <p>Discover the latest books in our collection.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="SlideImg/lms3.jpg" alt="Reading Events" class="d-block w-100 img-fluid">
                        <div class="carousel-caption d-none d-md-block text-shadow">
                            <h5 class="font-weight-bold">Upcoming Events</h5>
                            <p>Join us for book readings and discussions.</p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="carousel-control-prev" href="#libraryCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#libraryCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- Main Content Section -->
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-md-6 mb-4">
                    <div class="card shadow h-100 border-0">
                        <div class="card-body">
                            <h2 class="h4 font-weight-bold">Featured Books</h2>
                            <h5 class="text-muted">New Releases, March 31, 2025</h5>
                            <div class="bg-light rounded p-3 mb-3" style="height: 200px;">Book Cover Placeholder</div>
                            <p>Explore our latest additions to the library collection.</p>
                            <p class="text-muted">From gripping novels to insightful non-fiction, borrow these exciting titles today!</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 mb-4">
                    <div class="card shadow h-100 border-0">
                        <div class="card-body">
                            <h2 class="h4 font-weight-bold">Library Events</h2>
                            <h5 class="text-muted">Book Club, April 10, 2025</h5>
                            <div class="bg-light rounded p-3 mb-3" style="height: 200px;">Event Poster Placeholder</div>
                            <p>Join our monthly book club!</p>
                            <p class="text-muted">Discuss your favorite reads with fellow book lovers.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Library Promotions Section -->
        <div class="container mt-5">
            <div class="row">
                <div class="col-12 col-sm-4 mb-4">
                    <div class="card shadow border-0">
                        <div class="card-header bg-primary text-white text-center font-weight-bold">Spring Reading Challenge</div>
                        <div class="card-body p-3">
                            <img src="https://placehold.co/300x150?text=BOOKS" class="img-fluid rounded" alt="Reading Challenge">
                        </div>
                        <div class="card-footer text-center">Read 5 books, win a prize!</div>
                    </div>
                </div>
                <div class="col-12 col-sm-4 mb-4">
                    <div class="card shadow border-0">
                        <div class="card-header bg-danger text-white text-center font-weight-bold">Membership Drive</div>
                        <div class="card-body p-3">
                            <img src="https://placehold.co/300x150?text=CARD" class="img-fluid rounded" alt="Membership">
                        </div>
                        <div class="card-footer text-center">Sign up for exclusive benefits</div>
                    </div>
                </div>
                <div class="col-12 col-sm-4 mb-4">
                    <div class="card shadow border-0">
                        <div class="card-header bg-success text-white text-center font-weight-bold">Kids Story Time</div>
                        <div class="card-body p-3">
                            <img src="https://placehold.co/300x150?text=KIDS" class="img-fluid rounded" alt="Story Time">
                        </div>
                        <div class="card-footer text-center">Every Saturday at 10 AM</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
