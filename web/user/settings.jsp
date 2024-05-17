<%-- 
    Document   : settings
    Created on : May 17, 2024, 9:55:18 AM
    Author     : mac
--%>

<%@ include file="../include/header.jsp" %>
<body>
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
         data-sidebar-position="fixed" data-header-position="fixed">
        <%@ include file="../include/slidebar.jsp" %>

        <div class="body-wrapper">
            <%@ include file="../include/navbar.jsp" %>
            <div class="container-fluid pb-2">
                <div class="row ">
                    <div id ="profile-wrapper" >
                        <div class="bg-white shadow rounded overflow-hidden ">
                            <div class="px-4 py-4 cover cover " style="background: url(${pageContext.request.contextPath}/upload/deli-2.png)">
                                <div class="media align-items-end profile-head">
                                    <div class="profile mr-3 d-flex justify-content-between align-items-end">
                                        <img src="${pageContext.request.contextPath}/upload/tien-do-quy-4-4.png" class="rounded-circle img-thumbnail">
                                        <a href="${pageContext.request.contextPath}/profile/setting" class="btn btn-outline-dark btn-sm btn-block edit-cover">Edit profile</a>
                                    </div>

                                </div>
                            </div>
                            <div class="bg-light pt-4 px-4 d-flex justify-content-between text-center ">
                                <div class="media-body mb-5 text-white">
                                    <h4 class="mt-0 mb-0">Nguyen Hoang Long</h4>
                                </div>
                                <ul class="list-inline mb-0">
                                    <li class="list-inline-item">
                                        <h5 class="font-weight-bold mb-0 d-block">60</h5><small class="text-muted"><i class="fas fa-image mr-1"></i>Posts</small>
                                    </li>
                                    <li class="list-inline-item">
                                        <h5 class="font-weight-bold mb-0 d-block">745</h5><small class="text-muted"><i class="fas fa-user mr-1"></i>Followers</small>
                                    </li>
                                    <li class="list-inline-item">
                                        <h5 class="font-weight-bold mb-0 d-block">340</h5><small class="text-muted"><i class="fas fa-user mr-1"></i>Following</small>
                                    </li>
                                </ul>


                            </div>
                            <div class="px-4 py-3">
                                <h5 class="mb-2">About</h5>
                                <div class="p-4 rounded shadow-sm">
                                    <p class="font-italic mb-0">Web Developer Lives in DN Photographer</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container-fluid pt-0">
                <div class="row form-settings bg-white shadow rounded py-4 px-4 d-flex justify-content-between ">
                    <div class="p0">
                        <h5 class="mb-2">Settings</h5>
                    </div>
                    <form >
                          <div class="form-group pb-3">
                            <label>Full Name </label>
                            <input type="text" class="form-control" value="Nguyen Truong"/>
                        </div>
                        <div class="form-group pb-3">
                            <label>Email address</label>
                            <input type="email" class="form-control" value="binazure@gmail.com" readonly/>
                        </div>

                        <div class="form-group pb-3">
                            <label>About</label>
                            <input type="text" class="form-control" value="Web Developer Lives in DN Photographer">
                        </div>

                        <div class="form-group pb-3">
                            <label>Sex</label>
                            <select class="form-control" id="exampleFormControlSelect1">
                                <option>Select gender</option>
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>
                        
                        
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </form>
                </div>
            </div>
        </div>

        <%@ include file="../include/right-slidebar.jsp" %>


    </div>
</body>
<%@ include file="../include/footer.jsp" %>
