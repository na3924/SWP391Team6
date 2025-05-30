<%-- 
    Document   : parentDashboard
    Created on : May 29, 2025, 2:52:27 PM
    Author     : admin
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parent Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <!-- Header -->
    <header class="bg-primary text-white p-3 d-flex justify-content-between align-items-center">
        <img src="logo.png" alt="Logo" class="img-fluid" style="height: 50px;">
        <h1 class="h4">Parent Dashboard</h1>
        <div class="d-flex align-items-center">
            <span class="me-2">${parentName}</span>
            <img src="profile.jpg" alt="Profile" class="rounded-circle" style="width: 40px; height: 40px;">
        </div>
    </header>

    <!-- Main Content -->
    <main class="container my-4">
        <!-- Error or Info Message -->
        <c:if test="${not empty error}">
            <div class="alert alert-info">${error}</div>
        </c:if>

        <!-- Children Section -->
        <section class="mb-4">
            <h2 class="h5 mb-3">Your Children</h2>
            <c:choose>
                <c:when test="${empty children or fn:length(children) == 0}">
                    <div class="alert alert-info">No children found. Please add child data.</div>
                </c:when>
                <c:otherwise>
                    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-3">
                        <c:forEach var="child" items="${children}">
                            <div class="col">
                                <div class="card shadow-sm">
                                    <div class="card-body">
                                        <h3 class="card-title h6">${child.fullName} (ID: ${child.userId})</h3>
                                        <p class="card-text text-muted">
                                            <c:set var="classCount" value="0" />
                                            <c:forEach var="cls" items="${enrolledClasses}">
                                                <c:if test="${cls.childId == child.userId}">
                                                    <c:set var="classCount" value="${classCount + 1}" />
                                                </c:if>
                                            </c:forEach>
                                            ${classCount} Enrolled Classes
                                        </p>
                                        <a href="#" class="text-primary" onclick="alert('Details for ${child.fullName}')">View Details</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </c:otherwise>
            </c:choose>
        </section>

        <!-- Class Summary -->
        <section class="mb-4">
            <h2 class="h5 mb-3">Enrolled Classes</h2>
            <c:choose>
                <c:when test="${empty enrolledClasses or fn:length(enrolledClasses) == 0}">
                    <div class="alert alert-info">No enrolled classes found.</div>
                </c:when>
                <c:otherwise>
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <c:forEach var="cls" items="${enrolledClasses}">
                                    <li class="list-group-item">
                                        ${cls.className} (${cls.subjectName}) - ${cls.teacherName} (Approved) - Child: ${cls.childName} (ID: ${cls.childId})
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </section>

        <!-- Quick Status -->
        <section class="mb-4">
            <h2 class="h5 mb-3">Quick Status</h2>
            <c:choose>
                <c:when test="${empty pendingRegistrations and empty pendingPayments}">
                    <div class="alert alert-info">No pending registrations or payments.</div>
                </c:when>
                <c:otherwise>
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <c:forEach var="reg" items="${pendingRegistrations}">
                                <p class="text-warning">Pending Registration: ${reg.className}</p>
                            </c:forEach>
                            <c:forEach var="payment" items="${pendingPayments}">
                                <p class="text-danger">Pending Payment: $${payment.amount} (Class ID: ${payment.tutoringClassId})</p>
                            </c:forEach>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </section>

        <!-- Navigation Buttons -->
        <section class="d-flex gap-3">
            <a href="${pageContext.request.contextPath}/RegisterClass" class="btn btn-primary">Register Class</a>
            <a href="${pageContext.request.contextPath}/TrackGrades" class="btn btn-primary">Track Grades</a>
            <a href="${pageContext.request.contextPath}/PayFees" class="btn btn-primary">Pay Fees</a>
        </section>
    </main>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center p-3">
        <p>Footer</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>