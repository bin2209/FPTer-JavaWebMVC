<%-- 
    Document   : register
    Created on : May 13, 2024, 7:19:33 AM
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>FPTer</title>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/static/images/logos/favicon.png" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.min.css" />
    </head>

    <body>
        <!--  Body Wrapper -->
        <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
             data-sidebar-position="fixed" data-header-position="fixed">
            <div
                class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
                <div class="d-flex align-items-center justify-content-center w-100">
                    <div class="row justify-content-center w-100">
                        <div class="col-md-8 col-lg-4 col-xxl-3">
                            <div class="card mb-0">
                                <div class="card-body px-4">
                                    <a href="${pageContext.request.contextPath}/" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                        <img src="${pageContext.request.contextPath}/static/images/logo.png" width="100" alt="">
                                    </a>
                                    <p class="text-center">FPTer</p>
                                    <form>
                                        <div class="mb-3">
                                            <label for="exampleInputtext1" class="form-label">Name</label>
                                            <input type="text" class="form-control" placeholder="Enter name">
                                        </div>
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                            <input type="email" class="form-control" placeholder="Enter email">
                                        </div>
                                        <div class="mb-4">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <input type="password" class="form-control" placeholder="Enter new password">
                                        </div>
                                        
                                          <div class="mb-4">
                                            <label for="exampleInputPassword1" class="form-label">Re-Password</label>
                                            <input type="password" class="form-control" placeholder="Re-enter new password">
                                        </div>
                                        
                                        
                                        <a href="${pageContext.request.contextPath}/register" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2">Sign Up</a>
                                        <%@ include file="googlelogin.jsp" %>
                                        <div class="mt-3 d-flex align-items-center justify-content-center">
                                            <p class="fs-4 mb-0 fw-bold">Already have an account?</p>
                                            <a class="text-primary fw-bold ms-2" href="${pageContext.request.contextPath}/login">Sign In</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/static/libs/jquery/dist/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>