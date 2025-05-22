<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>ECOURSES - Online Courses HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
        <style>
            .navbar-vertical {
                position: relative;
                display: flex;
            }

            .navbar-nav {
                flex: 1;
            }

            .nav-item {
                position: relative;
            }

            .course-panel-container {
                position: absolute;
                top: 0;
                left: 100%;
                width: 600px;
                min-height: 100%;
                z-index: 9999;
                background-color: #f8f9fa;
                border-left: 1px solid #dee2e6;
                padding: 15px;
                display: none; /* Ẩn mặc định */
            }

            .course-panel {
                display: none;
                width: 100%;
                min-height: 200px;
            }

            .course-panel.active {
                display: block;
            }

            /* Header tabs */
            .course-panel .panel-header {
                display: flex;
                gap: 5px;
                margin-bottom: 10px;
                flex-wrap: wrap;
            }

            .course-panel .panel-header a {
                padding: 5px 10px;
                color: #FF6600; /* Đổi thành màu cam đậm */
                text-decoration: none;
                border: 1px solid #dee2e6;
                border-radius: 4px;
                cursor: pointer;
                background-color: #fff;
                white-space: nowrap;
            }

            .course-panel .panel-header a.active {
                background-color: #FF6600; /* Đổi thành màu cam đậm */
                color: #fff;
            }

            /* Panel content */
            .course-panel .panel-content {
                display: flex;
                gap: 20px;
            }

            .course-panel .column {
                flex: 1;
                display: none;
                flex-direction: column;
            }

            .course-panel .column.active {
                display: flex;
            }

            .course-panel h6 {
                font-size: 16px;
                color: #FF6600; /* Đổi thành màu cam đậm */
                margin-bottom: 10px;
            }

            .course-panel .content-list {
                display: flex;
                flex-wrap: wrap;
                gap: 5px;
            }

            .course-panel .content-list a {
                padding: 5px 10px;
                color: #000;
                text-decoration: none;
                border: 1px solid #dee2e6;
                border-radius: 4px;
                white-space: nowrap;
                background-color: #fff;
                display: flex;
                align-items: center;
            }

            .course-panel .content-list a:hover {
                background-color: #e9ecef;
                color: #FF6600; /* Đổi thành màu cam đậm */
            }

            /* Thêm mũi tên chỉ khi hover */
            .nav-item .nav-link {
                position: relative;
                padding: 8px 15px;
            }

            .nav-item .nav-link::after {
                content: '▶';
                font-size: 10px;
                position: absolute;
                right: 5px;
                top: 50%;
                transform: translateY(-50%);
                display: none;
                color: #FF6600; /* Đổi màu mũi tên thành màu cam đậm */
            }

            .nav-item.hover .nav-link::after {
                display: block;
            }
        </style>
    </head>

    <body>
        <!-- Topbar Start -->
        <div class="container-fluid d-none d-lg-block">
            <div class="row align-items-center py-4 px-xl-5">
                <div class="col-lg-3">
                    <a href="" class="text-decoration-none">
                        <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                    </a>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-map-marker-alt text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Our Office</h6>
                            <small>123 Street, New York, USA</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-envelope text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Email Us</h6>
                            <small>info@example.com</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-phone text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Call Us</h6>
                            <small>+012 345 6789</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->

        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <!-- Sidebar -->
                <div class="col-lg-4 d-none d-lg-block">
                    <a class="d-flex align-items-center justify-content-between bg-secondary w-100 text-decoration-none"
                       data-toggle="collapse" href="#navbar-vertical"
                       style="height: 67px; padding: 0 20px;">
                        <h5 class="text-primary m-0"><i class="fa fa-book-open mr-2"></i>Subjects</h5>
                        <i class="fa fa-angle-down text-primary"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0
                         border border-top-0 border-bottom-0 bg-light"
                         id="navbar-vertical" style="width: 100%; z-index: 9;">
                        <div class="navbar-nav w-100">
                            <div class="nav-item" data-panel="panel-1">
                                <a href="" class="nav-item nav-link">Luyện thi Đại học</a>
                            </div>
                            <div class="nav-item" data-panel="panel-2">
                                <a href="" class="nav-item nav-link">Lớp 10 - Lớp 11 - Lớp 12</a>
                            </div>
                            <div class="nav-item" data-panel="panel-3">
                                <a href="" class="nav-item nav-link">Luyện thi vào 10</a>
                            </div>
                            <div class="nav-item" data-panel="panel-4">
                                <a href="" class="nav-item nav-link">Lớp 6 - Lớp 7 - Lớp 8 - Lớp 9</a>
                            </div>
                            <div class="nav-item" data-panel="panel-5">
                                <a href="" class="nav-item nav-link">Lớp 1 - Lớp 2 - Lớp 3 - Lớp 4 - Lớp 5</a>
                            </div>
                        </div>
                        <!-- Container cố định cho panel -->
                        <div class="course-panel-container">
                            <div class="course-panel" id="panel-1">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                    <a class="tab-link" data-tab="courses">Khoá học</a>
                                </div>
                                <div class="panel-content">
                                    <div class="column documents active">
                                        <div class="content-list">
                                            <a href="">Đề thi thử Toán ĐH 2025</a>
                                            <a href="">Tổng ôn Ngữ văn ĐH</a>
                                            <a href="">Công thức Vật lý ĐH</a>
                                        </div>
                                    </div>
                                    <div class="column courses">
                                        <div class="content-list">
                                            <a href="">Luyện thi Toán ĐH cấp tốc</a>
                                            <a href="">Luyện thi Tiếng Anh ĐH</a>
                                            <a href="">Chiến lược ôn thi ĐH 3 tháng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-panel" id="panel-2">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                    <a class="tab-link" data-tab="courses">Khoá học</a>
                                </div>
                                <div class="panel-content">
                                    <div class="column documents active">
                                        <div class="content-list">
                                            <a href="">Sách bài tập Toán lớp 12</a>
                                            <a href="">Tóm tắt Ngữ văn lớp 11</a>
                                            <a href="">Bài tập Hóa học lớp 10</a>
                                        </div>
                                    </div>
                                    <div class="column courses">
                                        <div class="content-list">
                                            <a href="">Toán nâng cao lớp 12</a>
                                            <a href="">Học tốt Tiếng Anh lớp 11</a>
                                            <a href="">Hóa học cơ bản lớp 10</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-panel" id="panel-3">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                    <a class="tab-link" data-tab="courses">Khoá học</a>
                                </div>
                                <div class="panel-content">
                                    <div class="column documents active">
                                        <div class="content-list">
                                            <a href="">Đề thi thử vào 10 môn Toán</a>
                                            <a href="">Đề thi thử vào 10 môn Văn</a>
                                            <a href="">Cấu trúc đề thi vào 10</a>
                                        </div>
                                    </div>
                                    <div class="column courses">
                                        <div class="content-list">
                                            <a href="">Luyện thi vào 10 môn Toán</a>
                                            <a href="">Luyện thi vào 10 môn Văn</a>
                                            <a href="">Ôn thi vào 10 toàn diện</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-panel" id="panel-4">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                    <a class="tab-link" data-tab="courses">Khoá học</a>
                                </div>
                                <div class="panel-content">
                                    <div class="column documents active">
                                        <div class="content-list">
                                            <a href="">Bài tập Toán lớp 9</a>
                                            <a href="">Tóm tắt Ngữ văn lớp 8</a>
                                            <a href="">Công thức Vật lý lớp 7</a>
                                        </div>
                                    </div>
                                    <div class="column courses">
                                        <div class="content-list">
                                            <a href="">Toán nâng cao lớp 9</a>
                                            <a href="">Học tốt Ngữ văn lớp 8</a>
                                            <a href="">Vật lý cơ bản lớp 7</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-panel" id="panel-5">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                </div>
                                <div class="panel-content">
                                    <div class="column documents active">
                                        <div class="content-list">
                                            <a href="">Bài tập Toán lớp 5</a>
                                            <a href="">Tập đọc Tiếng Việt lớp 4</a>
                                            <a href="">Luyện viết chữ đẹp lớp 3</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </nav>
                </div>

                <div class="col-lg-8">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav py-0">
                                <a href="Home.jsp" class="nav-item nav-link active">Home</a>
                                <a href="About.jsp" class="nav-item nav-link">About</a>
                                <a href="Course.jsp" class="nav-item nav-link">Courses</a>
                                <a href="Teacher.jsp" class="nav-item nav-link">Teachers</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="Blog.jsp" class="dropdown-item">Blog List</a>
                                        <a href="single.jsp" class="dropdown-item">Blog Detail</a>
                                    </div>
                                </div>
                                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                            </div>
                            <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="">Join Now</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 pb-5 mb-5">
            <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#header-carousel" data-slide-to="1"></li>
                    <li data-target="#header-carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="min-height: 300px;">
                        <img class="position-relative w-100" src="img/carousel-1.jpg" style="min-height: 300px; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Best Education From Your Home</h1>
                                <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" style="min-height: 300px;">
                        <img class="position-relative w-100" src="img/carousel-2.jpg" style="min-height: 300px; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Best Online Learning Platform</h1>
                                <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item" style="min-height: 300px;">
                        <img class="position-relative w-100" src="img/carousel-3.jpg" style="min-height: 300px; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">New Way To Learn From Home</h1>
                                <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- About Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-lg-5">
                        <img class="img-fluid rounded mb-4 mb-lg-0" src="img/about.jpg" alt="">
                    </div>
                    <div class="col-lg-7" style="text-align: justify;">
                        <div class="text-left mb-4">
                            <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px; text-align: justify;">
                                Chất Lượng Giáo Dục - Giá TRị Bền Vững
                            </h5>
                            <h3 style="text-align: justify;">Khơi Nguồn Tri Thức – Dẫn Lối Thành Công</h3>
                        </div>

                        <p>Edura cam kết mang đến chất lượng giáo dục vượt trội với đội ngũ giáo viên tận tâm, phương pháp giảng dạy hiện đại và chương trình học bám sát thực tiễn.</p>

                        <p>Edura không chỉ chú ý đến việc truyền đạt kiến ​​thức, mà còn khơi dậy niềm đam mê học tập, phát triển tư duy và định hướng thành công cho mỗi học sinh.</p>

                        <p>Chất lượng hôm nay là giá trị vững chắc cho ngày mai – đó là kim chỉ nam trong mọi hoạt động của Edura.</p>

                        <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- About End -->
        <section id="gioithieu" class="py-5 bg-light">
            <div class="container">
                <h3 class="text-center mb-4">Ưu thế vượt trội của Edura</h3>
                <div class="row g-4">
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 text-center shadow-sm">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-people-fill text-primary" style="font-size: 3rem;"></i>
                                </div>
                                <h5 class="card-title">Giáo viên chất lượng</h5>
                                <p class="card-text">100% giáo viên có bằng cấp & kinh nghiệm giảng dạy lâu năm.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 text-center shadow-sm">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-book text-success" style="font-size: 3rem;"></i>
                                </div>
                                <h5 class="card-title">Giáo trình chuẩn</h5>
                                <p class="card-text">Giáo trình được biên soạn theo chuẩn khung của Bộ Giáo dục.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 text-center shadow-sm">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-bank text-warning" style="font-size: 3rem;"></i>
                                </div>
                                <h5 class="card-title">Liên kết nhà trường</h5>
                                <p class="card-text">Kết hợp với giáo viên chủ nhiệm theo dõi quá trình học tập.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <div class="card h-100 text-center shadow-sm">
                            <div class="card-body">
                                <div class="mb-3">
                                    <i class="bi bi-bar-chart-line text-danger" style="font-size: 3rem;"></i>
                                </div>
                                <h5 class="card-title">Tiến bộ vượt bậc</h5>
                                <p class="card-text">98% học sinh cải thiện kết quả chỉ sau 3 tháng học.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Category Start -->
        <div class="container-fluid py-5">
            <div class="container pt-5 pb-3">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Subjects</h5>
                    <h1>Explore Top Subjects</h1>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-1.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Web Design</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-2.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Development</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-3.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Game Design</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-4.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Apps Design</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-5.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Marketing</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-6.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Research</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-7.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">Content Writing</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="cat-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/cat-8.jpg" alt="">
                            <a class="cat-overlay text-white text-decoration-none" href="">
                                <h4 class="text-white font-weight-medium">SEO</h4>
                                <span>100 Courses</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Category Start -->

        <!-- Courses Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Courses</h5>
                    <h1>Our Popular Courses</h1>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-1.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-2.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-3.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-4.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-5.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="rounded overflow-hidden mb-2">
                            <img class="img-fluid" src="img/course-6.jpg" alt="">
                            <div class="bg-secondary p-4">
                                <div class="d-flex justify-content-between mb-3">
                                    <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                    <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                </div>
                                <a class="h5" href="">Web design & development courses for beginner</a>
                                <div class="border-top mt-4 pt-4">
                                    <div class="d-flex justify-content-between">
                                        <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                        <h5 class="m-0">$99</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Courses End -->

        <!-- Registration Start -->
        <div class="container-fluid bg-registration py-5" style="margin: 90px 0;">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-lg-7 mb-5 mb-lg-0">
                        <div class="mb-4">
                            <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Need Any Courses</h5>
                            <h1 class="text-white">30% Off For New Students</h1>
                        </div>
                        <p class="text-white">Invidunt lorem justo sanctus clita. Erat lorem labore ea, justo dolor lorem ipsum ut sed eos,
                            ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea ipsum est
                            dolor</p>
                        <ul class="list-inline text-white m-0">
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Labore eos amet dolor amet diam</li>
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Etsea et sit dolor amet ipsum</li>
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Diam dolor diam elitripsum vero.</li>
                        </ul>
                    </div>
                    <div class="col-lg-5">
                        <div class="card border-0">
                            <div class="card-header bg-light

 text-center p-4">
                                <h1 class="m-0">Sign Up Now</h1>
                            </div>
                            <div class="card-body rounded-bottom bg-primary p-5">
                                <form>
                                    <div class="form-group">
                                        <input type="text" class="form-control border-0 p-4" placeholder="Your name" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control border-0 p-4" placeholder="Your email" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <select class="custom-select border-0 px-4" style="height: 47px;">
                                            <option selected>Select a course</option>
                                            <option value="1">Course 1</option>
                                            <option value="2">Course 1</option>
                                            <option value="3">Course 1</option>
                                        </select>
                                    </div>
                                    <div>
                                        <button class="btn btn-dark btn-block border-0 py-3" type="submit">Sign Up Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Registration End -->

        <!-- Team Start -->
        <div class="container-fluid py-5">
            <div class="container pt-5 pb-3">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Teachers</h5>
                    <h1>Meet Our Teachers</h1>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-3 text-center team mb-4">
                        <div class="team-item rounded overflow-hidden mb-2">
                            <div class="team-img position-relative">
                                <img class="img-fluid" src="img/team-1.jpg" alt="">
                                <div class="team-social">
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="bg-secondary p-4">
                                <h5>Jhon Doe</h5>
                                <p class="m-0">Web Designer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 text-center team mb-4">
                        <div class="team-item rounded overflow-hidden mb-2">
                            <div class="team-img position-relative">
                                <img class="img-fluid" src="img/team-2.jpg" alt="">
                                <div class="team-social">
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="bg-secondary p-4">
                                <h5>Jhon Doe</h5>
                                <p class="m-0">Web Designer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 text-center team mb-4">
                        <div class="team-item rounded overflow-hidden mb-2">
                            <div class="team-img position-relative">
                                <img class="img-fluid" src="img/team-3.jpg" alt="">
                                <div class="team-social">
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="bg-secondary p-4">
                                <h5>Jhon Doe</h5>
                                <p class="m-0">Web Designer</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 text-center team mb-4">
                        <div class="team-item rounded overflow-hidden mb-2">
                            <div class="team-img position-relative">
                                <img class="img-fluid" src="img/team-4.jpg" alt="">
                                <div class="team-social">
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-outline-light btn-square mx-1" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                            <div class="bg-secondary p-4">
                                <h5>Jhon Doe</h5>
                                <p class="m-0">Web Designer</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->

        <!-- Testimonial Start -->
        <div class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Testimonial</h5>
                    <h1>What Say Our Students</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="owl-carousel testimonial-carousel">
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-normal mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="img/testimonial-1.jpg" alt="">
                                <h5 class="m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-normal mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="img/testimonial-2.jpg" alt="">
                                <h5 class="m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-normal mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="img/testimonial-3.jpg" alt="">
                                <h5 class="m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->

        <!-- Blog Start -->
        <div class="container-fluid py-5">
            <div class="container pt-5 pb-3">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Our Blog</h5>
                    <h1>Latest From Our Blog</h1>
                </div>
                <div class="row pb-3">
                    <div class="col-lg-4 mb-4">
                        <div class="blog-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/blog-1.jpg" alt="">
                            <a class="blog-overlay text-decoration-none" href="">
                                <h5 class="text-white mb-3">Lorem elitr magna stet eirmod labore amet labore clita at ut clita</h5>
                                <p class="text-primary m-0">Jan 01, 2050</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4">
                        <div class="blog-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/blog-2.jpg" alt="">
                            <a class="blog-overlay text-decoration-none" href="">
                                <h5 class="text-white mb-3">Lorem elitr magna stet eirmod labore amet labore clita at ut clita</h5>
                                <p class="text-primary m-0">Jan 01, 2050</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-4">
                        <div class="blog-item position-relative overflow-hidden rounded mb-2">
                            <img class="img-fluid" src="img/blog-3.jpg" alt="">
                            <a class="blog-overlay text-decoration-none" href="">
                                <h5 class="text-white mb-3">Lorem elitr magna stet eirmod labore amet labore clita at ut clita</h5>
                                <p class="text-primary m-0">Jan 01, 2050</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->

        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white py-5 px-sm-3 px-lg-5" style="margin-top: 90px;">
            <div class="row pt-5">
                <div class="col-lg-7 col-md-12">
                    <div class="row">
                        <div class="col-md-6 mb-5">
                            <h5 class="text-primary text-uppercase mb-4" style="letter-spacing: 5px;">Get In Touch</h5>
                            <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, New York, USA</p>
                            <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                            <p><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                            <div class="d-flex justify-content-start mt-4">
                                <a class="btn btn-outline-light btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-outline-light btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-outline-light btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-outline-light btn-square" href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="col-md-6 mb-5">
                            <h5 class="text-primary text-uppercase mb-4" style="letter-spacing: 5px;">Our Courses</h5>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Web Design</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Apps Design</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Marketing</a>
                                <a class="text-white mb-2" href="#"><i class="fa fa-angle-right mr-2"></i>Research</a>
                                <a class="text-white" href="#"><i class="fa fa-angle-right mr-2"></i>SEO</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-12 mb-5">
                    <h5 class="text-primary text-uppercase mb-4" style="letter-spacing: 5px;">Newsletter</h5>
                    <p>Rebum labore lorem dolores kasd est, et ipsum amet et at kasd, ipsum sea tempor magna tempor. Accu kasd sed ea duo ipsum. Dolor duo eirmod sea justo no lorem est diam</p>
                    <div class="w-100">
                        <div class="input-group">
                            <input type="text" class="form-control border-light" style="padding: 30px;" placeholder="Your Email Address">
                            <div class="input-group-append">
                                <button class="btn btn-primary px-4">Sign Up거리</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-dark text-white border-top py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="row">
                <div class="col-lg-6 text-center text-md-left mb-3 mb-md-0">
                    <p class="m-0 text-white">© <a href="#">Domain Name</a>. All Rights Reserved. Designed by <a href="https://htmlcodex.com">HTML Codex</a>
                    </p>
                </div>
                <div class="col-lg-6 text-center text-md-right">
                    <ul class="nav d-inline-flex">
                        <li class="nav-item">
                            <a class="nav-link text-white py-0" href="#">Privacy</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white py-0" href="#">Terms</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white py-0" href="#">FAQs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white py-0" href="#">Help</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>

        <script>
            $(document).ready(function () {
                let activeNavItem = null;

                // Xử lý hover cho các nav-item
                $('.nav-item').hover(
                        function () {
                            // Xóa trạng thái hover khỏi nav-item trước đó
                            if (activeNavItem) {
                                activeNavItem.removeClass('hover');
                            }
                            // Thêm trạng thái hover cho nav-item hiện tại
                            activeNavItem = $(this).addClass('hover');
                            // Hiển thị container panel
                            $('.course-panel-container').show();
                            // Ẩn tất cả các panel
                            $('.course-panel').removeClass('active');
                            // Hiển thị panel tương ứng với nav-item hiện tại
                            var panelId = $(this).data('panel');
                            $('#' + panelId).addClass('active');
                        }
                );

                // Giữ panel hiển thị khi hover vào container hoặc panel
                $('.course-panel-container, .course-panel').hover(
                        function () {
                            $('.course-panel-container').show();
                        },
                        function () {
                            $('.course-panel-container').hide();
                        }
                );

                // Xử lý chuyển tab trong panel
                $('.tab-link').click(function (e) {
                    e.preventDefault();
                    var panel = $(this).closest('.course-panel');
                    panel.find('.tab-link').removeClass('active');
                    $(this).addClass('active');

                    var tab = $(this).data('tab');
                    panel.find('.column').removeClass('active');
                    panel.find('.column.' + tab).addClass('active');
                });
            });
        </script>
    </body>
</html>