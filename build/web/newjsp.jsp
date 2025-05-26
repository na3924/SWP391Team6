<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Gotto Online Job Portal</title>

        <!-- CSS FILES -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100;300;400;600;700&display=swap" rel="stylesheet">
        <link href="css/bootstrap-icons.css" rel="stylesheet">
        <link href="css/owl.carousel.min.css" rel="stylesheet">
        <link href="css/owl.theme.default.min.css" rel="stylesheet">
        <link href="css/tooplate-gotto-job.css" rel="stylesheet">
        <style>
        /* Ghi đè style cho btn-primary */
.btn-primary {
    background-color: #FF6B6B !important; /* Màu hồng đỏ */
    border-color: #FF6B6B !important; /* Viền cùng màu */
    color: white !important; /* Văn bản màu trắng */
    padding: 8px 28px; /* Kích thước giống nút Login */
    border-radius: 999px; /* Bo góc giống nút Login */
    font-weight: 600; /* Độ đậm giống nút Login */
    transition: all 0.3s ease; /* Hiệu ứng mượt */
}

.btn-primary:hover {
    background-color: #0DCAF0 !important; /* Màu xanh dương khi hover */
    border-color: #0DCAF0 !important; /* Viền cùng màu */
    color: white !important; /* Giữ màu trắng */
}

/* Style cho about-section */
.about-section .btn-primary {
    display: inline-block;
    text-align: center;
}

.text-primary {
    color: #FF6B6B !important;
}

/* Style cho header */
.top-header {
    background-color: #FFF1F1;
}

/* Style cho nút Login */
.btn-login {
    background-color: #FF6B6B;
    color: white !important;
    padding: 8px 28px;
    border-radius: 999px;
    border: none;
    font-weight: 600;
    display: inline-block;
    white-space: nowrap;
    text-align: center;
    transition: all 0.3s ease;
}

.btn-login:hover {
    background-color: #FFE66D;
    color: white !important;
}

/* Style cho course-panel và column */
.course-panel {
    display: none !important;
}

.course-panel.active {
    display: block !important;
}

.course-panel .column {
    display: none !important;
    flex: 1;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    overflow-y: auto;
}

.course-panel .column.active {
    display: flex !important;
    flex-direction: column;
}

/* Style cho navbar-vertical */
#navbar-vertical {
    display: none !important;
    position: absolute;
    top: 100%;
    left: 0;
    width: 600px;
    z-index: 1000;
}

#navbar-vertical.show {
    display: block !important;
}

#navbar-vertical .nav-link {
    padding: 10px 15px;
    color: #333;
}

#navbar-vertical .nav-link:hover {
    background-color: #e9ecef;
}

/* Style cho navbar-nav và nav-link */
.navbar-nav {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    width: 100%;
}

.nav-item {
    flex: 1;
    min-width: 0;
}

.nav-link {
    cursor: pointer;
    padding: 8px 15px;
    text-align: center;
    white-space: nowrap;
    font-size: 16px;
    color: #333;
}

.nav-link.active {
    color: #FF6B6B !important;
    font-weight: bold;
}

/* Vô hiệu hóa quy tắc ghi đè từ a */
a, a:hover, a:active, a:focus, a.tab-link, a.tab-link:hover, a.tab-link.active {
    color: inherit !important;
    text-decoration: none !important;
}

/* Style cho tab-link */
.course-panel .panel-header a.tab-link {
    padding: 5px 15px !important;
    cursor: pointer;
    color: #FF6B6B !important; /* Màu hồng đỏ mặc định */
    text-decoration: none !important;
    position: relative !important;
    transition: all 0.3s ease !important;
    display: inline-block !important;
    font-size: 14px !important;
    line-height: 1.5 !important;
    z-index: 10 !important;
}

/* Khi di chuột vào tab */
.course-panel .panel-header a.tab-link:hover {
    color: #0DCAF0 !important; /* Màu xanh dương khi hover */
    text-decoration: underline !important;
}

/* Khi tab được chọn (click/active) */
.course-panel .panel-header a.tab-link.active {
    color: #0DCAF0 !important; /* Màu xanh dương khi click */
    font-weight: 700 !important; /* Chữ in đậm */
    text-decoration: none !important;
}

/* Hình tam giác dưới tab active */
.course-panel .panel-header a.tab-link.active::after {
    content: '' !important;
    position: absolute !important;
    bottom: -6px !important;
    left: 50% !important;
    transform: translateX(-50%) !important;
    width: 0 !important;
    height: 0 !important;
    border-left: 5px solid transparent !important;
    border-right: 5px solid transparent !important;
    border-bottom: 5px solid #0DCAF0 !important;
    z-index: 11 !important;
}

/* Đảm bảo panel-header không che khuất */
.course-panel .panel-header {
    overflow: visible !important;
    position: relative !important;
    z-index: 9 !important;
}
/* Style cho panel-content và content-list */
.panel-content {
    display: flex;
    justify-content: space-between;
}

.content-list a {
    display: block;
    padding: 5px 0;
    color: #333;
    text-decoration: none;
}

.content-list a:hover {
    color: #007bff;
    text-decoration: underline;
}

/* Style cho navbar */
.navbar {
    padding: 1rem 0;
    background-color: #f8f9fa;
    border-bottom: 1px solid #dee2e6;
}

.navbar .container-fluid {
    display: flex;
    align-items: center;
    padding-left: 15px;
    padding-right: 15px;
}

.navbar-nav .nav-item {
    flex-grow: 1;
    text-align: center;
}

.nav-item.d-flex {
    gap: 10px;
    justify-content: center;
    align-items: center;
}

/* Style cho custom-btn */
.custom-btn {
    padding: 8px 20px;
    border-radius: 20px;
    font-size: 16px;
    transition: all 0.3s ease;
}

.custom-btn:hover {
    background-color: #FFE66D;
    color: white !important;
}

.custom-btn.btn-login {
    background-color: #FF6B6B;
    color: white !important;
}

/* Style cho register-link */
.register-link {
    font-size: 16px;
    padding: 8px 15px;
    color: #333;
    text-decoration: none;
}

.register-link:hover {
    color: #007bff;
    text-decoration: underline;
}

/* Style cho carousel-indicators */
.carousel-indicators {
    position: relative !important;
    bottom: 0 !important;
    margin-top: 1rem !important;
    z-index: 2 !important;
}

.carousel-indicators button {
    width: 12px !important;
    height: 12px !important;
    border-radius: 50% !important;
    background-color: #bbb !important;
    border: none !important;
    margin: 0 5px !important;
    padding: 0 !important;
    cursor: pointer !important;
    transition: background-color 0.3s ease !important;
    box-sizing: content-box !important;
}

.carousel-indicators .active {
    background-color: #FF6B6B !important;
    opacity: 1 !important;
}

.carousel-indicators button:hover {
    background-color: #FF8787 !important;
}

.carousel-indicators button:active,
.carousel-indicators button:focus {
    outline: none !important;
    box-shadow: none !important;
}

/* Style cho border-custom */
.border-custom {
    border: 1px solid #FF6B6B !important;
    box-shadow: 0 4px 8px rgba(255, 107, 107, 0.2) !important;
    border-radius: 8px !important;
    padding: 15px !important;
    transition: box-shadow 0.3s ease !important;
}

.border-custom:hover {
    box-shadow: 0 6px 12px rgba(255, 107, 107, 0.3) !important;
}

/* Responsive */
@media (max-width: 992px) {
    .navbar-nav {
        flex-direction: column;
        text-align: center;
    }
    .navbar-nav .nav-item {
        margin-bottom: 15px;
        flex-grow: 0;
    }
    .nav-item.d-flex {
        flex-direction: row;
        justify-content: center;
        gap: 10px;
    }
    .custom-btn {
        margin-top: 0;
    }
    #navbar-vertical {
        width: 100%;
    }
    #navbar-vertical .d-flex {
        flex-direction: column;
    }
    #navbar-vertical .navbar-nav {
        width: 100%;
    }
    .about-section h5 {
        font-size: clamp(0.8rem, 2vw, 1.1rem);
    }
    .about-section h3 {
        font-size: clamp(1.1rem, 2.5vw, 1.75rem);
    }
    .about-section .col-lg-7 {
        overflow-x: hidden;
        max-width: 100%;
    }
}
</style>
    </head>
    <body id="top">
        <div class="container-fluid d-none d-lg-block top-header">
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

        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav d-flex w-100 align-items-center">
                        <li class="nav-item flex-grow-1">
                            <button id="subjects-btn" class="nav-link d-flex align-items-center justify-content-center custom-btn btn-login"
                                    aria-expanded="false" aria-controls="navbar-vertical"
                                    style="padding: 8px 15px; border-radius: 5px; cursor: pointer; border: none;">
                                <i class="fa fa-book-open mr-2"></i>Subjects
                            </button>
                        </li>
                        <li class="nav-item flex-grow-1">
                            <a class="nav-link active" href="index.html">Home</a>
                        </li>
                        <li class="nav-item flex-grow-1">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item flex-grow-1 dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-toggle="dropdown" aria-expanded="false">Pages</a>
                            <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                                <li><a class="dropdown-item" href="job-listings.html">Job Listings</a></li>
                                <li><a class="dropdown-item" href="job-details.html">Job Details</a></li>
                            </ul>
                        </li>
                        <li class="nav-item flex-grow-1">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                        <li class="nav-item flex-grow-1 d-flex justify-content-center align-items-center">
                            <a class="nav-link register-link" href="#">Register</a>
                            <a class="nav-link custom-btn btn-login" href="#">Login</a>
                        </li>
                    </ul>
                </div>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light"
                     id="navbar-vertical" style="z-index: 9; width: 600px; top: 100%; left: 0;">
                    <div class="d-flex w-100">
                        <div class="navbar-nav" style="width: 250px;">
                            <a href="#" class="nav-link" data-panel="panel-1">Luyện thi Đại học</a>
                            <a href="#" class="nav-link" data-panel="panel-2">Lớp 10 - Lớp 11 - Lớp 12</a>
                            <a href="#" class="nav-link" data-panel="panel-3">Luyện thi vào 10</a>
                            <a href="#" class="nav-link" data-panel="panel-4">Lớp 6 - Lớp 7 - Lớp 8 - Lớp 9</a>
                            <a href="#" class="nav-link" data-panel="panel-5">Lớp 1 - Lớp 2 - Lớp 3 - Lớp 4 - Lớp 5</a>
                        </div>
                        <div class="course-panel-container pl-3" style="flex: 1;">
                            <div class="course-panel active" id="panel-1">
                                <div class="panel-header">
                                    <a class="tab-link active" data-tab="documents">Tài liệu</a>
                                    <a class="tab-link" data-tab="courses">Khóa học</a>
                                </div>
                                <div class="panel-content d-flex">
                                    <div class="column documents active" style="flex: 1; margin-right: 10px;">
                                        <div class="content-list">
                                            <a href="/documents/math-exam-2025.pdf">Đề thi thử Toán ĐH 2025</a>
                                            <a href="/documents/literature-review.pdf">Tổng ôn Ngữ văn ĐH</a>
                                            <a href="/documents/physics-formulas.pdf">Công thức Vật lý ĐH</a>
                                        </div>
                                    </div>
                                    <div class="column courses" style="flex: 1;">
                                        <div class="content-list">
                                            <a href="/courses/math-crash-course">Luyện thi Toán ĐH cấp tốc</a>
                                            <a href="/courses/english-prep">Luyện thi Tiếng Anh ĐH</a>
                                            <a href="/courses/exam-strategy">Chiến lược ôn thi ĐH 3 tháng</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Các panel khác (panel-2, panel-3, panel-4, panel-5) giữ nguyên -->
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
                    </div>
                </nav>
            </div>
        </nav>
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


        <main>


            <section class="categories-section section-padding" id="categories-section">
                <div class="container">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-12 col-12 text-center">
                            <h2 class="mb-5">Browse by <span>Categories</span></h2>
                        </div>
                        <div class="col-lg-2 col-md-4 col-6">
                            <div class="categories-block">
                                <a href="#" class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="categories-icon bi-window"></i>
                                    <small class="categories-block-title">Web design</small>
                                    <div class="categories-block-number d-flex flex-column justify-content-center align-items-center">
                                        <span class="categories-block-number-text">320</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-6">
                            <div class="categories-block">
                                <a href="#" class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="categories-icon bi-twitch"></i>
                                    <small class="categories-block-title">Marketing</small>
                                    <div class="categories-block-number d-flex flex-column justify-content-center align-items-center">
                                        <span class="categories-block-number-text">180</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-6">
                            <div class="categories-block">
                                <a href="#" class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="categories-icon bi-play-circle-fill"></i>
                                    <small class="categories-block-title">Video</small>
                                    <div class="categories-block-number d-flex flex-column justify-content-center align-items-center">
                                        <span class="categories-block-number-text">340</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-6">
                            <div class="categories-block">
                                <a href="#" class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="categories-icon bi-globe"></i>
                                    <small class="categories-block-title">Websites</small>
                                    <div class="categories-block-number d-flex flex-column justify-content-center align-items-center">
                                        <span class="categories-block-number-text">140</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-4 col-6">
                            <div class="categories-block">
                                <a href="#" class="d-flex flex-column justify-content-center align-items-center h-100">
                                    <i class="categories-icon bi-people"></i>
                                    <small class="categories-block-title">Customer Support</small>
                                    <div class="categories-block-number d-flex flex-column justify-content-center align-items-center">
                                        <span class="categories-block-number-text">84</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- About start -->
            <section class="about-section">
                <div class="container">
                    <div class="container-fluid py-5">
                        <div class="container py-5">
                            <div class="row align-items-center">
                                <div class="col-lg-5">
                                    <img class="img-fluid rounded mb-4 mb-lg-0" src="img/about.jpg" alt="">
                                </div>
                                <div class="col-lg-7" style="text-align: justify;">
                                    <div class="text-left mb-4">
                                        <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px; text-align: justify; white-space: nowrap; font-size: clamp(0.9rem, 2.5vw, 1.25rem);">
                                            Chất Lượng Giáo Dục - Giá Trị Bền Vững
                                        </h5>
                                        <h3 style="white-space: nowrap; text-align: left; font-size: clamp(1.25rem, 3vw, 2rem); overflow-wrap: anywhere;">
                                            Khơi Nguồn Tri Thức – Dẫn Lối Thành Công
                                        </h3>
                                    </div>
                                    <p>Edura cam kết mang đến chất lượng giáo dục vượt trội với đội ngũ giáo viên tận tâm, phương pháp giảng dạy hiện đại và chương trình học bám sát thực tiễn.</p>
                                    <p>Edura không chỉ chú ý đến việc truyền đạt kiến thức, mà còn khơi dậy niềm đam mê học tập, phát triển tư duy và định hướng thành công cho mỗi học sinh.</p>
                                    <p>Chất lượng hôm nay là giá trị vững chắc cho ngày mai – đó là kim chỉ nam trong mọi hoạt động của Edura.</p>
                                    <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- About end -->

            <!-- Ưu thế start -->
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
            <!-- Ưu thế end -->
            <section class="job-section job-featured-section section-padding" id="job-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12 text-center mx-auto mb-4">
                            <h2>Featured Jobs</h2>
                            <p><strong>Over 10k opening jobs</strong> Feel free to download and use our free HTML templates from Tooplate website.</p>
                        </div>
                        <div class="col-lg-12 col-12">
                            <div class="job-thumb d-flex">
                                <div class="job-image-wrap bg-white shadow-lg">
                                    <img src="images/logos/google.png" class="job-image img-fluid" alt="">
                                </div>
                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                    <div class="mb-3">
                                        <h4 class="job-title mb-lg-0">
                                            <a href="job-details.html" class="job-title-link">Technical Lead</a>
                                        </h4>
                                        <div class="d-flex flex-wrap align-items-center">
                                            <p class="job-location mb-0">
                                                <i class="custom-icon bi-geo-alt me-1"></i>
                                                Kuala, Malaysia
                                            </p>
                                            <p class="job-date mb-0">
                                                <i class="custom-icon bi-clock me-1"></i>
                                                10 hours ago
                                            </p>
                                            <p class="job-price mb-0">
                                                <i class="custom-icon bi-cash me-1"></i>
                                                $20k
                                            </p>
                                            <div class="d-flex">
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge badge-level">Internship</a>
                                                </p>
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge">Freelance</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-section-btn-wrap">
                                        <a href="job-details.html" class="custom-btn btn">Apply now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="job-thumb d-flex">
                                <div class="job-image-wrap bg-white shadow-lg">
                                    <img src="images/logos/apple.png" class="job-image img-fluid" alt="">
                                </div>
                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                    <div class="mb-3">
                                        <h4 class="job-title mb-lg-0">
                                            <a href="job-details.html" class="job-title-link">Business Director</a>
                                        </h4>
                                        <div class="d-flex flex-wrap align-items-center">
                                            <p class="job-location mb-0">
                                                <i class="custom-icon bi-geo-alt me-1"></i>
                                                California, USA
                                            </p>
                                            <p class="job-date mb-0">
                                                <i class="custom-icon bi-clock me-1"></i>
                                                1 day ago
                                            </p>
                                            <p class="job-price mb-0">
                                                <i class="custom-icon bi-cash me-1"></i>
                                                $90k
                                            </p>
                                            <div class="d-flex">
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge badge-level">Senior</a>
                                                </p>
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge">Full Time</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-section-btn-wrap">
                                        <a href="job-details.html" class="custom-btn btn">Apply now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="job-thumb d-flex">
                                <div class="job-image-wrap bg-white shadow-lg">
                                    <img src="images/logos/meta.png" class="job-image img-fluid" alt="">
                                </div>
                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                    <div class="mb-3">
                                        <h4 class="job-title mb-lg-0">
                                            <a href="job-details.html" class="job-title-link">HR Manager</a>
                                        </h4>
                                        <div class="d-flex flex-wrap align-items-center">
                                            <p class="job-location mb-0">
                                                <i class="custom-icon bi-geo-alt me-1"></i>
                                                Tower, Paris
                                            </p>
                                            <p class="job-date mb-0">
                                                <i class="custom-icon bi-clock me-1"></i>
                                                22 hours ago
                                            </p>
                                            <p class="job-price mb-0">
                                                <i class="custom-icon bi-cash me-1"></i>
                                                $50k
                                            </p>
                                            <div class="d-flex">
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge badge-level">Junior</a>
                                                </p>
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge">Contract</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-section-btn-wrap">
                                        <a href="job-details.html" class="custom-btn btn">Apply now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="job-thumb d-flex">
                                <div class="job-image-wrap bg-white shadow-lg">
                                    <img src="images/logos/slack.png" class="job-image img-fluid" alt="">
                                </div>
                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                    <div class="mb-3">
                                        <h4 class="job-title mb-lg-0">
                                            <a href="job-details.html" class="job-title-link">Dev Ops</a>
                                        </h4>
                                        <div class="d-flex flex-wrap align-items-center">
                                            <p class="job-location mb-0">
                                                <i class="custom-icon bi-geo-alt me-1"></i>
                                                Bangkok, Thailand
                                            </p>
                                            <p class="job-date mb-0">
                                                <i class="custom-icon bi-clock me-1"></i>
                                                40 minutes ago
                                            </p>
                                            <p class="job-price mb-0">
                                                <i class="custom-icon bi-cash me-1"></i>
                                                $75k - 80k
                                            </p>
                                            <div class="d-flex">
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge badge-level">Senior</a>
                                                </p>
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge">Part Time</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-section-btn-wrap">
                                        <a href="job-details.html" class="custom-btn btn">Apply now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="job-thumb d-flex">
                                <div class="job-image-wrap bg-white shadow-lg">
                                    <img src="images/logos/creative-market.png" class="job-image img-fluid" alt="">
                                </div>
                                <div class="job-body d-flex flex-wrap flex-auto align-items-center ms-4">
                                    <div class="mb-3">
                                        <h4 class="job-title mb-lg-0">
                                            <a href="job-details.html" class="job-title-link">UX Designer</a>
                                        </h4>
                                        <div class="d-flex flex-wrap align-items-center">
                                            <p class="job-location mb-0">
                                                <i class="custom-icon bi-geo-alt me-1"></i>
                                                Bangkok, Thailand
                                            </p>
                                            <p class="job-date mb-0">
                                                <i class="custom-icon bi-clock me-1"></i>
                                                2 hours ago
                                            </p>
                                            <p class="job-price mb-0">
                                                <i class="custom-icon bi-cash me-1"></i>
                                                $100k
                                            </p>
                                            <div class="d-flex">
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge badge-level">Entry</a>
                                                </p>
                                                <p class="mb-0">
                                                    <a href="job-listings.html" class="badge">Remote</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="job-section-btn-wrap">
                                        <a href="job-details.html" class="custom-btn btn">Apply now</a>
                                    </div>
                                </div>
                            </div>
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center mt-5">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">Prev</span>
                                        </a>
                                    </li>
                                    <li class="page-item active" aria-current="page">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">4</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">5</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <div class="custom-text-block custom-border-radius-start">
                                <h2 class="text-white mb-3">Gotto helps you an easier way to get new job</h2>
                                <p class="text-white">You are not allowed to redistribute the template ZIP file on any other template collection website. Please contact us for more info. Thank you.</p>
                                <div class="d-flex mt-4">
                                    <div class="counter-thumb">
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="12" data-speed="1000"></span>
                                            <span class="counter-number-text">M</span>
                                        </div>
                                        <span class="counter-text">Daily active users</span>
                                    </div>
                                    <div class="counter-thumb">
                                        <div class="d-flex">
                                            <span class="counter-number" data-from="1" data-to="450" data-speed="1000"></span>
                                            <span class="counter-number-text">k</span>
                                        </div>
                                        <span class="counter-text">Opening jobs</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="video-thumb">
                                <img src="images/people-working-as-team-company.jpg" class="about-image custom-border-radius-end img-fluid" alt="">
                                <div class="video-info">
                                    <a href="https://www.youtube.com/tooplate" class="youtube-icon bi-youtube"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="job-section recent-jobs-section section-padding">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-12 mb-4">
                            <h2>Recent Jobs</h2>
                            <p><strong>Over 10k opening jobs</strong> Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito adipcingi elit eismuod larehai</p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/it-professional-works-startup-project.jpg" class="job-image img-fluid" alt="">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Internship</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Freelance</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">Technical Lead</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/salesforce.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Salesforce</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Kuala, Malaysia
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            10 hours ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $50k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/marketing-assistant.jpg" class="job-image img-fluid" alt="marketing assistant">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Senior</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Part Time</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">Marketing Assistant</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/spotify.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Spotify</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            8 days ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/coding-man.jpg" class="job-image img-fluid" alt="">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Junior</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">Programmer</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/twitter.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Twiter</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            23 hours ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $68k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/pretty-blogger-posing-cozy-apartment.jpg" class="job-image img-fluid" alt="">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Junior</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">HR Manager</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/yelp.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Yelp</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            California, USA
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            15 hours ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $35k - 45k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/paper-analysis.jpg" class="job-image img-fluid" alt="">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Junior</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Contract</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">Sales Representative</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/paypal.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Paypal</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Bangkok, Thailand
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            30 mins ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k - 35k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="job-thumb job-thumb-box">
                                <div class="job-image-box-wrap">
                                    <a href="job-details.html">
                                        <img src="images/jobs/logo-designer-working-computer-desktop.jpg" class="job-image img-fluid" alt="">
                                    </a>
                                    <div class="job-image-box-wrap-info d-flex align-items-center">
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge badge-level">Mid Level</a>
                                        </p>
                                        <p class="mb-0">
                                            <a href="job-listings.html" class="badge">Full Time</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="job-body">
                                    <h4 class="job-title">
                                        <a href="job-details.html" class="job-title-link">Graphic Designer</a>
                                    </h4>
                                    <div class="d-flex align-items-center">
                                        <div class="job-image-wrap d-flex align-items-center bg-white shadow-lg mt-2 mb-4">
                                            <img src="images/logos/envato.png" class="job-image me-3 img-fluid" alt="">
                                            <p class="mb-0">Envato</p>
                                        </div>
                                        <a href="#" class="bi-bookmark ms-auto me-2"></a>
                                        <a href="#" class="bi-heart"></a>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <p class="job-location">
                                            <i class="custom-icon bi-geo-alt me-1"></i>
                                            Melbourne, Australia
                                        </p>
                                        <p class="job-date">
                                            <i class="custom-icon bi-clock me-1"></i>
                                            2 days ago
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center border-top pt-3">
                                        <p class="job-price mb-0">
                                            <i class="custom-icon bi-cash me-1"></i>
                                            $20k
                                        </p>
                                        <a href="job-details.html" class="custom-btn btn ms-auto">Apply now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-12 recent-jobs-bottom d-flex ms-auto my-4">
                            <a href="job-listings.html" class="custom-btn btn ms-lg-auto">Browse Job Listings</a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- PHẢN HỒI TỪ HỌC VIÊN -->
            <div class="container py-5">
                <div class="row">
                    <div class="col-md-5">
                        <div class="d-flex justify-content-center">
                            <h3 class="mb-4">Lắng nghe và chia sẻ 💬</h3>
                        </div>

                        <div id="testimonialWrapper" class="border-custom"> <!-- Thêm class "border-custom" -->
                            <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner text-start">

                                    <!-- Slide 1 -->
                                    <div class="carousel-item active">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" nếu không muốn viền từng khung -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-1.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Phan Đức Kiên</h6>
                                                    <p class="mb-0 small">Tài khoản: kien****@gmail.com</p>
                                                    <p class="mb-0 small">🏆 90,15 điểm - Thi Đánh giá tư duy 2024</p>
                                                    <p class="mb-0 small">🥇 Học sinh giỏi cấp tỉnh Toán</p>
                                                    <p class="mb-0 small">🎓 Được tuyển thẳng vào Đại học Bách Khoa Hà Nội</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Em cảm ơn Edura và các thầy cô rất nhiều ạ.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 2 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-2.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Nguyễn Thị Hà My</h6>
                                                    <p class="mb-0 small">Tài khoản: hamy****@gmail.com</p>
                                                    <p class="mb-0 small">🏆 Đạt học bổng Edura Excellence 2024</p>
                                                    <p class="mb-0 small">🌟 Đạt thủ khoa kỳ thi ĐGNL toàn quốc 2024</p>
                                                    <p class="mb-0 small">📚 Đạt IELTS 7.5 khi đang học lớp 11</p>
                                                    <p class="mb-0 small">🎓 Tuyển thẳng vào Đại học Y Hà Nội</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Không khí lớp học thoải mái, thầy cô nhiệt tình, bạn bè thân thiện.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 3 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-3.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Trần Minh Quân</h6>
                                                    <p class="mb-0 small">Tài khoản: quan****@gmail.com</p>
                                                    <p class="mb-0 small">🥇 Giải Nhì HSG Quốc gia Vật lý</p>
                                                    <p class="mb-0 small">💻 9.5 điểm thi Tin học quốc tế MOS</p>
                                                    <p class="mb-0 small">🎓 Được học bổng toàn phần tại FPT University</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Em rất biết ơn vì những kiến thức bổ ích từ Edura.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 4 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-4.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Nguyễn Thị Thuỳ Linh</h6>
                                                    <p class="mb-0 small">Tài khoản: linh****@gmail.com</p>
                                                    <p class="mb-0 small">🥇 Học bổng toàn phần Edura 2024</p>
                                                    <p class="mb-0 small">📘 GPA 9.5 suốt 3 năm THPT</p>
                                                    <p class="mb-0 small">🏆 Đạt thủ khoa kỳ thi học sinh giỏi môn Văn 2024</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Chương trình học dễ hiểu, thầy cô tận tâm và nhiệt huyết.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 5 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-5.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Lê Hoàng Phúc</h6>
                                                    <p class="mb-0 small">Tài khoản: phuc****@gmail.com</p>
                                                    <p class="mb-0 small">📊 127 điểm - ĐGNL ĐHQG TP.HCM 2024</p>
                                                    <p class="mb-0 small">🌟 Thành viên đội tuyển HSG quốc gia môn Toán 2023</p>
                                                    <p class="mb-0 small">🏆 Học bổng tài năng Viettel</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Nhờ Edura, em đã cải thiện rõ rệt cả kiến thức lẫn kỹ năng làm bài.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 6 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-6.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Trần Minh Khôi</h6>
                                                    <p class="mb-0 small">Tài khoản: khoi****@gmail.com</p>
                                                    <p class="mb-0 small">💯 9.75 điểm thi tốt nghiệp Toán</p>
                                                    <p class="mb-0 small">📚 Đạt IELTS 7.5 khi đang học lớp 11</p>
                                                    <p class="mb-0 small">🥇 Top 10 thí sinh xuất sắc toàn quốc</p>
                                                    <p class="mb-0 small">🏆 Học bổng OISP Đại học Quốc gia TP.HCM</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Em chưa từng nghĩ mình sẽ thi tốt thế nếu không có Edura đồng hành.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 7 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-7.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Đỗ Thị Linh Chi</h6>
                                                    <p class="mb-0 small">Tài khoản: chi****@gmail.com</p>
                                                    <p class="mb-0 small">🏆 28.5/30 kỳ thi THPT Quốc gia</p>
                                                    <p class="mb-0 small">📚 Giải Nhì Quốc gia môn Tiếng Anh</p>
                                                    <p class="mb-0 small">🥇 Học bổng toàn phần Đại học FPT</p>
                                                    <p class="mb-0 small">🎓 Tuyển thẳng vào Đại học Y Hà Nội</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Lộ trình học rõ ràng, dễ theo sát và hiệu quả. Em cảm ơn trung tâm!
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 8 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-8.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Ngô Tuấn Anh</h6>
                                                    <p class="mb-0 small">Tài khoản: anh****@gmail.com</p>
                                                    <p class="mb-0 small">🌟 9.8 điểm Vật lý kỳ thi tốt nghiệp THPT Quốc gia</p>
                                                    <p class="mb-0 small">🥇 Huy chương Bạc Olympic 30/4</p>
                                                    <p class="mb-0 small">🎓 Đỗ Đại học Y Hà Nội với 29.5 điểm</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Hệ thống bài tập và video rất chất lượng, giúp em tự tin thi cử.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 9 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-9.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Lý Gia Hưng</h6>
                                                    <p class="mb-0 small">Tài khoản: hung****@gmail.com</p>
                                                    <p class="mb-0 small">📈 131 điểm kỳ thi ĐGNL TP.HCM</p>
                                                    <p class="mb-0 small">🥇 Học sinh giỏi cấp tỉnh môn Hóa</p>
                                                    <p class="mb-0 small">📚 Giải Nhì Quốc gia môn Tiếng Anh</p>
                                                    <p class="mb-0 small">🏆 Nhận học bổng VietHope</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Chương trình học rất sát đề, dễ ôn, dễ nhớ và có hệ thống.
                                            </p>
                                        </div>
                                    </div>

                                    <!-- Slide 10 -->
                                    <div class="carousel-item">
                                        <div class="card p-4"> <!-- Loại bỏ "shadow-custom" -->
                                            <div class="d-flex align-items-center mb-3">
                                                <img src="images/hocvien-10.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                                <div>
                                                    <h6 class="text-primary mb-1">Phạm Mai Hương</h6>
                                                    <p class="mb-0 small">Tài khoản: huong****@gmail.com</p>
                                                    <p class="mb-0 small">🌟 GPA 9.8, đứng đầu lớp chuyên Văn</p>
                                                    <p class="mb-0 small">🥇 Giải Nhất cấp tỉnh môn Văn</p>
                                                    <p class="mb-0 small">🏆 Học bổng nữ sinh tiêu biểu 2024</p>
                                                    <p class="mb-0 small">🥇 Top 10 thí sinh xuất sắc toàn quốc</p>
                                                </div>
                                            </div>
                                            <p class="fst-italic text-muted">
                                                <i class="bi bi-quote fs-4 me-1"></i>Khóa học không chỉ giúp em học tốt mà còn tự tin thể hiện bản thân hơn.
                                            </p>
                                        </div>
                                    </div>

                                </div>

                                <!-- Chấm tròn điều hướng -->
                                <div class="carousel-indicators mt-3 d-flex justify-content-center" id="testimonial-indicators">
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="4" aria-label="Slide 5"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="5" aria-label="Slide 6"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="6" aria-label="Slide 7"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="7" aria-label="Slide 8"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="8" aria-label="Slide 9"></button>
                                    <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="9" aria-label="Slide 10"></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Cột phải sẽ thiết kế sau -->
                    <div class="col-md-7">
                        <h3 class="mb-4 font-weight-bold text-center">
                            👨‍👩‍👧‍👦 Góc Nhìn Phụ Huynh
                        </h3>

                        <!-- Vùng cuộn phản hồi với thanh cuộn đẹp -->
                        <div style="max-height: 400px; overflow-y: auto; padding-right: 10px;" class="custom-scrollbar">
                            <!-- Các phản hồi của phụ huynh như trước -->
                            <div class="border-left pl-3 border-primary mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Tôi đánh giá cao việc trung tâm có sổ liên lạc học tập online, giúp phụ huynh dễ dàng theo dõi kết quả từng tuần.”</p>
                                <p class="text-right text-primary font-weight-bold mb-0">– Chị Hương - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-success mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi luôn háo hức đến lớp. Tôi thấy đây là môi trường lý tưởng cho học sinh phổ thông.”</p>
                                <p class="text-right text-success font-weight-bold mb-0">– Anh Minh - phụ huynh lớp 11</p>
                            </div>

                            <div class="border-left pl-3 border-info mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi trở nên tự giác và chủ động hơn nhiều sau khi học tại trung tâm. Cảm ơn thầy cô!”</p>
                                <p class="text-right text-info font-weight-bold mb-0">– Cô Lan - phụ huynh lớp 12</p>
                            </div>
                            <div class="border-left pl-3 border-secondary mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Môi trường học tập tại trung tâm rất tích cực, con tôi đã tìm thấy niềm đam mê với môn Hóa.”</p>
                                <p class="text-right text-secondary font-weight-bold mb-0">– Cô Phương - phụ huynh lớp 12</p>
                            </div>

                            <div class="border-left pl-3 border-success mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Giáo viên rất tận tâm và có phương pháp dạy phù hợp với từng học sinh. Con tôi tiến bộ rõ rệt chỉ sau 1 học kỳ.”</p>
                                <p class="text-right text-success font-weight-bold mb-0">– Anh Tuấn - phụ huynh lớp 11</p>
                            </div>

                            <div class="border-left pl-3 border-primary mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi rất thích đến lớp vì thầy cô thân thiện, môi trường học tập hiện đại và khuyến khích sự sáng tạo.”</p>
                                <p class="text-right text-primary font-weight-bold mb-0">– Chị Mai - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-info mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Việc được gửi báo cáo học tập hàng tuần giúp tôi biết con mình đang gặp khó khăn ở đâu để hỗ trợ kịp thời.”</p>
                                <p class="text-right text-info font-weight-bold mb-0">– Anh Dũng - phụ huynh lớp 12</p>
                            </div>
                            <div class="border-left pl-3 border-danger mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi tự tin hơn khi làm bài thi nhờ phương pháp dạy sáng tạo của trung tâm.”</p>
                                <p class="text-right text-danger font-weight-bold mb-0">– Anh Hùng - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-success mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Trung tâm có đội ngũ giáo viên giỏi, con tôi từ mất gốc Toán đã vươn lên được điểm khá chỉ sau 3 tháng.”</p>
                                <p class="text-right text-success font-weight-bold mb-0">– Cô Lan - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-primary mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi học đều các môn, không còn lo lắng trước các kỳ kiểm tra lớn như trước nữa.”</p>
                                <p class="text-right text-primary font-weight-bold mb-0">– Chị Hạnh - phụ huynh lớp 12</p>
                            </div>

                            <!-- Phản hồi mới -->
                            <div class="border-left pl-3 border-warning mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Tôi rất hài lòng với lộ trình học tập rõ ràng, giúp con tôi cải thiện kỹ năng viết luận hiệu quả.”</p>
                                <p class="text-right text-warning font-weight-bold mb-0">– Chị Hoa - phụ huynh lớp 11</p>
                            </div>





                            <div class="border-left pl-3 border-dark mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Giáo viên luôn hỗ trợ tận tình, con tôi đã đạt điểm cao trong kỳ thi vừa qua.”</p>
                                <p class="text-right text-dark font-weight-bold mb-0">– Anh Việt - phụ huynh lớp 11</p>
                            </div>

                            <div class="border-left pl-3 border-light mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Tôi thích cách trung tâm tổ chức các buổi họp phụ huynh trực tuyến, rất tiện lợi.”</p>
                                <p class="text-right text-light font-weight-bold mb-0" style="color: #6c757d !important;">– Chị Linh - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-info mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi đã cải thiện kỹ năng tiếng Anh đáng kể nhờ các lớp bổ trợ chất lượng.”</p>
                                <p class="text-right text-info font-weight-bold mb-0">– Anh Nam - phụ huynh lớp 12</p>
                            </div>

                            <div class="border-left pl-3 border-success mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Tôi rất ấn tượng với sự quan tâm của giáo viên đến từng học sinh.”</p>
                                <p class="text-right text-success font-weight-bold mb-0">– Chị Thảo - phụ huynh lớp 11</p>
                            </div>

                            <div class="border-left pl-3 border-warning mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Con tôi từ yếu môn Văn nay đã tự tin tham gia các cuộc thi viết.”</p>
                                <p class="text-right text-warning font-weight-bold mb-0">– Anh Quân - phụ huynh lớp 10</p>
                            </div>

                            <div class="border-left pl-3 border-danger mb-4 bg-light p-3 rounded shadow-sm">
                                <p class="mb-2">“Phương pháp dạy Toán tại trung tâm giúp con tôi hiểu bài nhanh hơn rất nhiều.”</p>
                                <p class="text-right text-danger font-weight-bold mb-0">– Cô Ngọc - phụ huynh lớp 12</p>
                            </div>

                            <!-- Thêm phản hồi nếu cần -->
                        </div>
                    </div>



                </div>
            </div>

            <section class="cta-section">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-10">
                            <h2 class="text-white mb-2">Over 10k opening jobs</h2>
                            <p class="text-white">If you are looking for free HTML templates, you may visit Tooplate website. If you need a collection of free templates, you can visit Too CSS website.</p>
                        </div>
                        <div class="col-lg-4 col-12 ms-auto">
                            <div class="custom-border-btn-wrap d-flex align-items-center mt-lg-4 mt-2">
                                <a href="#" class="custom-btn custom-border-btn btn me-4">Create an account</a>
                                <a href="#" class="custom-link">Post a job</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 mb-3">
                        <div class="d-flex align-items-center mb-4">
                            <img src="images/logo.png" class="img-fluid logo-image">
                            <div class="d-flex flex-column">
                                <strong class="logo-text">Gotto</strong>
                                <small class="logo-slogan">Online Job Portal</small>
                            </div>
                        </div>
                        <p class="mb-2">
                            <i class="custom-icon bi-globe me-1"></i>
                            <a href="#" class="site-footer-link">www.jobbportal.com</a>
                        </p>
                        <p class="mb-2">
                            <i class="custom-icon bi-telephone me-1"></i>
                            <a href="tel: 305-240-9671" class="site-footer-link">305-240-9671</a>
                        </p>
                        <p>
                            <i class="custom-icon bi-envelope me-1"></i>
                            <a href="mailto:info@yourgmail.com" class="site-footer-link">info@jobportal.co</a>
                        </p>
                    </div>
                    <div class="col-lg-2 col-md-3 col-6 ms-lg-auto">
                        <h6 class="site-footer-title">Company</h6>
                        <ul class="footer-menu">
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">About</a></li>
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Blog</a></li>
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Jobs</a></li>
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Contact</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-md-3 col-6">
                        <h6 class="site-footer-title">Resources</h6>
                        <ul class="footer-menu">
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Guide</a></li>
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">How it works</a></li>
                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Salary Tool</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-md-8 col-12 mt-3 mt-lg-0">
                        <h6 class="site-footer-title">Newsletter</h6>
                        <form class="custom-form newsletter-form" action="#" method="post" role="form">
                            <h6 class="site-footer-title">Get notified jobs news</h6>
                            <div class="input-group">
                                <span class="input-group-text" id="basic-addon1"><i class="bi-person"></i></span>
                                <input type="text" name="newsletter-name" id="newsletter-name" class="form-control" placeholder="yourname@gmail.com" required>
                                <button type="submit" class="form-control">
                                    <i class="bi-send"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="site-footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-12 d-flex align-items-center">
                            <p class="copyright-text">Copyright © Gotto Job 2048</p>
                            <ul class="footer-menu d-flex">
                                <li class="footer-menu-item"><a href="#" class="footer-menu-link">Privacy Policy</a></li>
                                <li class="footer-menu-item"><a href="#" class="footer-menu-link">Terms</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-5 col-12 mt-2 mt-lg-0">
                            <ul class="social-icon">
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-twitter"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-facebook"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-linkedin"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-instagram"></a>
                                </li>
                                <li class="social-icon-item">
                                    <a href="#" class="social-icon-link bi-youtube"></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-12 mt-2 d-flex align-items-center mt-lg-0">
                            <p>Design: <a class="sponsored-link" rel="sponsored" href="https://www.tooplate.com" target="_blank">Tooplate</a></p>
                        </div>
                        <a class="back-top-icon bi-arrow-up smoothscroll d-flex justify-content-center align-items-center" href="#top"></a>
                    </div>
                </div>
            </div>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <script src="js/owl.carousel.min.js"></script>
<!-- <script src="js/counter.js"></script> -->
<!-- <script src="js/custom.js"></script> -->

        
    <script>
    $(document).ready(function () {
    // Debug tất cả nav-link trong #navbar-vertical
    $('#navbar-vertical .nav-link').each(function () {
        const panelId = $(this).attr('data-panel');
        console.log('Nav-link trong #navbar-vertical:', $(this).text().trim(), 'data-panel:', panelId);
        if (!panelId) {
            console.warn('Nav-link thiếu data-panel:', $(this).prop('outerHTML'));
        }
    });

    // Debug tất cả panel
    $('.course-panel').each(function () {
        console.log('Panel tồn tại:', $(this).attr('id'));
        console.log('Columns trong panel:', $(this).find('.column').length, $(this).find('.column').map(function() { return $(this).attr('class'); }).get());
    });

    // Ẩn tất cả panel và cột khi load trang
    $('.course-panel').removeClass('active').css('display', 'none');
    $('.course-panel .column').removeClass('active').css('display', 'none');
    console.log('Khởi tạo: Tất cả panel và cột đã ẩn');

    // Ẩn navbar-vertical khi load trang
    $('#navbar-vertical').removeClass('show').css('display', 'none');
    console.log('Khởi tạo: Dropdown navbar-vertical đã ẩn');

    // Toggle dropdown Subjects
    $('#subjects-btn').click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        const $dropdown = $('#navbar-vertical');
        const isShown = $dropdown.hasClass('show');
        $dropdown.toggleClass('show').css('display', isShown ? 'none' : 'block');
        $(this).attr('aria-expanded', !isShown);
        console.log('Toggle dropdown: show =', !isShown);
    });

    // Xử lý click vào nav-link trong #navbar-vertical
    $('#navbar-vertical .nav-link').click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        const panelId = $(this).attr('data-panel');
        console.log('Clicked nav-link:', $(this).text().trim(), 'data-panel:', panelId);

        if (!panelId || typeof panelId !== 'string' || panelId.trim() === '') {
            alert('Lỗi: Panel ID không hợp lệ. Vui lòng thử lại!');
            console.error('Panel ID không hợp lệ:', panelId, 'Element:', $(this).prop('outerHTML'));
            return;
        }

        const cleanPanelId = panelId.trim();
        console.log('Clean panelId:', cleanPanelId);

        const panelElement = document.getElementById(cleanPanelId);
        if (!panelElement) {
            alert('Nội dung cho "' + $(this).text().trim() + '" hiện chưa khả dụng. Vui lòng thử lại sau!');
            console.warn(`Panel ${cleanPanelId} không tồn tại trong DOM`);
            return;
        }

        const $newPanel = $(panelElement);
        console.log('Panel được chọn:', $newPanel.attr('id'), 'tồn tại:', $newPanel.length);

        $('.course-panel').removeClass('active').css('display', 'none');
        $('.course-panel .column').removeClass('active').css('display', 'none');
        console.log('Ẩn tất cả panel và cột');

        $newPanel.addClass('active').css('display', 'block');
        console.log('Hiển thị panel:', $newPanel.attr('id'), 'active =', $newPanel.hasClass('active'), 'display =', $newPanel.css('display'));

        $newPanel.find('.tab-link').removeClass('active');
        const $documentsTab = $newPanel.find('.tab-link[data-tab="documents"]');
        $documentsTab.addClass('active');
        $newPanel.find('.column').removeClass('active').css('display', 'none');
        const $documentsColumn = $newPanel.find('.column.documents');
        if ($documentsColumn.length) {
            $documentsColumn.addClass('active').css('display', 'flex');
            console.log('Cột Tài liệu active =', $documentsColumn.hasClass('active'), 'display =', $documentsColumn.css('display'));
        } else {
            console.warn('Cột Tài liệu không tồn tại trong panel:', $newPanel.attr('id'));
        }

        $('#navbar-vertical .nav-link').removeClass('active');
        $(this).addClass('active');
        console.log('Nav-link active:', $(this).text().trim());

        console.log('Dropdown vẫn mở để chọn mục khác');
    });

    // Xử lý hover tab
    $('.tab-link').on('mouseenter', function () {
        const $panel = $(this).closest('.course-panel');
        let tab = $(this).data('tab');
        console.log('Tab value:', tab, 'Element:', $(this).prop('outerHTML'));

        if (typeof tab !== 'string') {
            console.warn('Tab không phải chuỗi:', tab, 'Element:', $(this).prop('outerHTML'));
            tab = 'documents';
        }

        const cleanTab = tab.replace(/[^\w\s-]/g, '').trim();
        console.log('Cleaned tab value:', cleanTab, 'Char codes:', cleanTab.split('').map(char => char.charCodeAt(0)));

        if (cleanTab === '') {
            console.warn('Cleaned tab is empty, falling back to documents:', tab, 'Element:', $(this).prop('outerHTML'));
            tab = 'documents';
        }

        console.log('Hover tab:', cleanTab, 'trong panel', $panel.attr('id'));

        // Debug $panel
        console.log('Panel element:', $panel.length, 'Classes:', $panel.attr('class'));
        console.log('Columns trong panel:', $panel.find('.column').length, $panel.find('.column').map(function() { return $(this).attr('class'); }).get());

        $panel.find('.tab-link').removeClass('active');
        $panel.find('.column').removeClass('active').css('display', 'none');

        // Sử dụng selector an toàn hơn
        const selector = '.column.' + cleanTab;
        console.log('Selector:', selector);
        const $targetColumn = $panel.find(selector);
        if ($targetColumn.length) {
            $targetColumn.addClass('active').css('display', 'flex');
            console.log('Cột', cleanTab, 'active =', $targetColumn.hasClass('active'), 'display =', $targetColumn.css('display'));
        } else {
            console.warn('Cột ' + selector + ' không tồn tại trong panel:', $panel.attr('id'));
            const $defaultColumn = $panel.find('.column.documents');
            if ($defaultColumn.length) {
                $panel.find('.tab-link[data-tab="documents"]').addClass('active');
                $defaultColumn.addClass('active').css('display', 'flex');
                console.log('Hiển thị cột Tài liệu mặc định');
            } else {
                console.warn('Cột .column.documents cũng không tồn tại trong panel:', $panel.attr('id'));
            }
        }
    });
    // Xử lý click vào tab-link
$('.tab-link').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();
    
    const $panel = $(this).closest('.course-panel');
    const tab = $(this).data('tab');
    console.log('Clicked tab:', tab, 'trong panel', $panel.attr('id'));

    // Xóa active khỏi tất cả tab-link và column trong panel
    $panel.find('.tab-link').removeClass('active');
    $panel.find('.column').removeClass('active').css('display', 'none');

    // Thêm active vào tab-link được click
    $(this).addClass('active');

    // Hiển thị column tương ứng
    const $targetColumn = $panel.find('.column.' + tab);
    if ($targetColumn.length) {
        $targetColumn.addClass('active').css('display', 'flex');
        console.log('Cột', tab, 'active =', $targetColumn.hasClass('active'), 'display =', $targetColumn.css('display'));
    } else {
        console.warn('Cột .' + tab + ' không tồn tại trong panel:', $panel.attr('id'));
    }
});

    // Đóng dropdown khi click ra ngoài
    $(document).click(function (e) {
        if (!$(e.target).closest('#subjects-btn, #navbar-vertical').length) {
            $('#navbar-vertical').removeClass('show').css('display', 'none');
            $('#subjects-btn').attr('aria-expanded', 'false');
            console.log('Đóng dropdown khi click ra ngoài');
        }
    });
});
</script>






        <!-- Chấm tròn điều hướng -->
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                const carousel = document.querySelector('#testimonialCarousel');
                const indicators = document.querySelectorAll('#testimonial-indicators button');

                // Lắng nghe sự kiện chuyển slide (tự động hoặc ấn nút)
                carousel.addEventListener('slid.bs.carousel', function (event) {
                    indicators.forEach(btn => btn.classList.remove('active'));
                    if (indicators[event.to]) {
                        indicators[event.to].classList.add('active');
                    }
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script>
document.querySelectorAll('[class]').forEach(el => {
    if (el.className.includes('.')) {
        console.error('❌ Có dấu chấm dư trong class:', el);
    }
});
</script>

    </body>
</html>