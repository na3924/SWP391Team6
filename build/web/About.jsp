<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>ECOURSES - Online Courses HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

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

        <!-- Bootstrap JS  -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


        <style>
            .custom-indicators {
                display: flex;
                justify-content: flex-start;
                gap: 8px;
            }

            .custom-indicators button {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                border: none;
                background-color: #ccc;
                transition: background-color 0.3s ease;
            }

            .custom-indicators button.active {
                background-color: #007bff;
            }
            #testimonialWrapper {
                display: flex;
                justify-content: center;
                border-radius: 20px; /* Bo góc */
                border: 1px solid rgba(0, 0, 0, 0.1); /* Viền mờ */
                backdrop-filter: blur(10px); /* Làm mờ nền nếu có nền phía sau (hiệu ứng kính mờ) */
                background-color: rgba(255, 255, 255, 0.85); /* Nền trong suốt nhẹ để mờ đẹp */
                box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1); /* Bóng nhẹ */
                overflow: hidden; /* Đảm bảo bo góc áp dụng cho phần bên trong */
                padding: 20px;
                
            }
            .carousel-indicators {
                display: flex;
                justify-content: center; /* Căn giữa theo chiều ngang */
                margin-top: 10px; /* (tùy chọn) tạo khoảng cách với phần trên */
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
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="d-flex align-items-center justify-content-between bg-secondary w-100 text-decoration-none" data-toggle="collapse" href="#navbar-vertical" style="height: 67px; padding: 0 30px;">
                        <h5 class="text-primary m-0"><i class="fa fa-book-open mr-2"></i>Subjects</h5>
                        <i class="fa fa-angle-down text-primary"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 9;">
                        <div class="navbar-nav w-100">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Web Design <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="" class="dropdown-item">HTML</a>
                                    <a href="" class="dropdown-item">CSS</a>
                                    <a href="" class="dropdown-item">jQuery</a>
                                </div>
                            </div>
                            <a href="" class="nav-item nav-link">Apps Design</a>
                            <a href="" class="nav-item nav-link">Marketing</a>
                            <a href="" class="nav-item nav-link">Research</a>
                            <a href="" class="nav-item nav-link">SEO</a>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0"><span class="text-primary">E</span>COURSES</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav py-0">
                                <a href="Home.jsp" class="nav-item nav-link">Home</a>
                                <a href="About.jsp" class="nav-item nav-link active">About</a>
                                <a href="Course.jsp" class="nav-item nav-link">Courses</a>
                                <a href="teacher.html" class="nav-item nav-link">Teachers</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Blog</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="Blog.jsp.html" class="dropdown-item">Blog List</a>
                                        <a href="single.html" class="dropdown-item">Blog Detail</a>
                                    </div>
                                </div>
                                <a href="contact.html" class="nav-item nav-link">Contact</a>
                            </div>
                            <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="">Join Now</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid page-header" style="margin-bottom: 90px;">
            <div class="container">
                <div class="d-flex flex-column justify-content-center" style="min-height: 300px">
                    <h3 class="display-4 text-white text-uppercase">About</h3>
                    <div class="d-inline-flex text-white">
                        <p class="m-0 text-uppercase"><a class="text-white" href="">Home</a></p>
                        <i class="fa fa-angle-double-right pt-1 px-3"></i>
                        <p class="m-0 text-uppercase">About</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


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
        <!-- LÃ½ do chá»n chÃºng tÃ´i -->
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
                            <div class="card-header bg-light text-center p-4">
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


        <!-- Testimonial Start -->
        <!-- PHẢN HỒI TỪ HỌC VIÊN -->
        <div class="container py-5">
            <div class="row">
                <div class="col-md-5">
                    <div class="d-flex justify-content-center">
    <h3 class="mb-4">Lắng nghe và chia sẻ</h3>
</div>

                    <div id="testimonialWrapper">
                        <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner text-start">

                                <!-- Slide 1 -->
                                <div class="carousel-item active">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-1.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
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
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-2.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                            <div>
                                                <h6 class="text-primary mb-1">Nguyễn Thị Hà My</h6>
                                                <p class="mb-0 small">Tài khoản: hamy****@gmail.com</p>
                                                <p class="mb-0 small">🏆 Đạt học bổng Edura Excellence 2024</p>
                                                <p class="mb-0 small">🌟 Đạt thủ khoa kỳ thi ĐGNL toàn quốc 2024</p>
                                                <p class="mb-0 small">📚 Đạt IELTS 7.5 khi đang học lớp 11</p>
                                            </div>
                                        </div>
                                        <p class="fst-italic text-muted">
                                            <i class="bi bi-quote fs-4 me-1"></i>Không khí lớp học thoải mái, thầy cô nhiệt tình, bạn bè thân thiện.
                                        </p>
                                    </div>
                                </div>
                                <!-- Slide 3 -->
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-3.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
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
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-4.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
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
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-5.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
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
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-6.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                            <div>
                                                <h6 class="text-primary mb-1">Trần Minh Khôi</h6>
                                                <p class="mb-0 small">Tài khoản: khoi****@gmail.com</p>
                                                <p class="mb-0 small">💯 9.75 điểm thi tốt nghiệp Toán</p>
                                                <p class="mb-0 small">🥇 Top 10 thí sinh xuất sắc toàn quốc</p>
                                                <p class="mb-0 small">🏆 Học bổng OISP Đại học Quốc gia TP.HCM</p>
                                            </div>
                                        </div>
                                        <p class="fst-italic text-muted">
                                            <i class="bi bi-quote fs-4 me-1"></i>Em chưa từng nghĩ mình sẽ thi tốt thế nếu không có Edura đồng hành.
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-7.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                            <div>
                                                <h6 class="text-primary mb-1">Đỗ Thị Linh Chi</h6>
                                                <p class="mb-0 small">Tài khoản: chi****@gmail.com</p>
                                                <p class="mb-0 small">🏆 28.5/30 kỳ thi THPT Quốc gia</p>
                                                <p class="mb-0 small">📚 Giải Nhì Quốc gia môn Tiếng Anh</p>
                                                <p class="mb-0 small">🎓 Học bổng toàn phần Đại học FPT</p>
                                            </div>
                                        </div>
                                        <p class="fst-italic text-muted">
                                            <i class="bi bi-quote fs-4 me-1"></i>Lộ trình học rõ ràng, dễ theo sát và hiệu quả. Em cảm ơn trung tâm!
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-8.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                            <div>
                                                <h6 class="text-primary mb-1">Ngô Tuấn Anh</h6>
                                                <p class="mb-0 small">Tài khoản: anh****@gmail.com</p>
                                                <p class="mb-0 small">🌟 9.8 điểm Vật lý kỳ thi tốt nghiệp THPT Quốc gia</p>
                                                <p class="mb-0 small">🥇 Huy chương Bạc Olympic 30/4</p>
                                                <p class="mb-0 small">🎓 Đỗ thủ khoa Đại học Y Hà Nội với 29.5 điểm</p>
                                            </div>
                                        </div>
                                        <p class="fst-italic text-muted">
                                            <i class="bi bi-quote fs-4 me-1"></i>Hệ thống bài tập và video rất chất lượng, giúp em tự tin thi cử.
                                        </p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-9.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
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
                                <div class="carousel-item">
                                    <div class="card shadow border-0 p-4">
                                        <div class="d-flex align-items-center mb-3">
                                            <img src="img/hocvien-10.jpg" alt="Học viên" class="rounded-circle me-3" style="width: 120px; height: 120px; object-fit: cover;">
                                            <div>
                                                <h6 class="text-primary mb-1">Phạm Mai Hương</h6>
                                                <p class="mb-0 small">Tài khoản: huong****@gmail.com</p>
                                                <p class="mb-0 small">🌟 GPA 9.8, đứng đầu lớp chuyên Văn</p>
                                                
                                                <p class="mb-0 small">🥇 Giải Nhất cấp tỉnh môn Văn</p>
                                                <p class="mb-0 small">🏆 Học bổng nữ sinh tiêu biểu 2024</p>
                                            </div>
                                        </div>
                                        <p class="fst-italic text-muted">
                                            <i class="bi bi-quote fs-4 me-1"></i>Khóa học không chỉ giúp em học tốt mà còn tự tin thể hiện bản thân hơn.
                                        </p>
                                    </div>
                                </div>



                            </div>

                            <!-- Chấm tròn điều hướng -->
                            <div class="custom-indicators mt-3 d-flex justify-content-center" id="testimonial-indicators">
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="0" class="active"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="1"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="2"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="3"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="4"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="5"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="6"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="7"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="8"></button>
                                <button type="button" data-bs-target="#testimonialCarousel" data-bs-slide-to="9"></button>

                            </div>
                        </div>

                    </div>
                </div>

                <!-- Cột phải sẽ thiết kế sau -->
<section class="bg-gray-100 py-14 px-6 md:px-20">
  <h2 class="text-3xl font-bold text-center text-gray-800 mb-10">
    👂 Lắng Nghe Từ Phụ Huynh
  </h2>

  <div class="space-y-6 max-w-5xl mx-auto">

    <!-- Card 1 -->
    <div class="bg-white rounded-xl shadow p-5 flex items-center gap-5">
      <img src="https://i.pravatar.cc/80?img=7" class="w-16 h-16 rounded-full border-2 border-blue-300" />
      <div>
        <p class="text-gray-700 italic">
          “Tôi hoàn toàn hài lòng với sự tiến bộ của con sau khi học tại trung tâm.”
        </p>
        <p class="text-sm text-blue-600 mt-2 font-semibold">– Chị Như, phụ huynh lớp 6</p>
      </div>
    </div>

    <!-- Card 2 -->
    <div class="bg-white rounded-xl shadow p-5 flex items-center gap-5">
      <img src="https://i.pravatar.cc/80?img=9" class="w-16 h-16 rounded-full border-2 border-blue-300" />
      <div>
        <p class="text-gray-700 italic">
          “Giao tiếp với trung tâm rất dễ dàng, giáo viên và nhân viên đều thân thiện.”
        </p>
        <p class="text-sm text-blue-600 mt-2 font-semibold">– Anh Quang, phụ huynh lớp 9</p>
      </div>
    </div>

  </div>
</section>




                </div>
            </div>
        </div>




        <!-- Testimonial End -->


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
                                <button class="btn btn-primary px-4">Sign Up</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-dark text-white border-top py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
            <div class="row">
                <div class="col-lg-6 text-center text-md-left mb-3 mb-md-0">
                    <p class="m-0 text-white">&copy; <a href="#">Domain Name</a>. All Rights Reserved. Designed by <a href="https://htmlcodex.com">HTML Codex</a>
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
        <!<!-- Chấm tròn điều hướng -->
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


    </body>

</html>