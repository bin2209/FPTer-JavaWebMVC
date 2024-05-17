<%@ include file="../include/header.jsp" %>
<style>
    #profile-wrapper{
        margin-bottom:20px;
    }
    .profile img{
        width: 130px;
        height: 130px;
    }
    .profile .edit-cover {
        position: relative;
        color: white;
        right: 0;
        height: -webkit-fit-content;
        border: 1px solid;
    }

</style>

<body>
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
         data-sidebar-position="fixed" data-header-position="fixed">
        <%@ include file="../include/slidebar.jsp" %>

        <div class="body-wrapper">
            <%@ include file="../include/navbar.jsp" %>
            <div class="container-fluid">
                <div class="row ">
                    <div id ="profile-wrapper" class="col-lg-7 ">
                        <div class="bg-white shadow rounded overflow-hidden">
                            <div class="px-4 py-4 cover cover" style="background: url(${pageContext.request.contextPath}/upload/deli-2.png)">
                                <div class="media align-items-end profile-head">
                                    <div class="profile mr-3 d-flex justify-content-between"><img src="${pageContext.request.contextPath}/upload/tien-do-quy-4-4.png" class="rounded-circle mb-2 img-thumbnail">
                                        <a href="#" class="btn btn-outline-dark btn-sm btn-block edit-cover">Edit profile</a>
                                    </div>

                                </div>
                            </div>
                            <div class="bg-light p-4 d-flex justify-content-between text-center">
                                <div class="media-body mb-5 text-white">
                                    <h4 class="mt-0 mb-0">Nguyen Hoang Long</h4>
                                    <p class="small mb-4"><i class="fas fa-map-marker-alt mr-2"></i>New York</p>
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

                <div class="row">
                    <%@ include file="newsfeed.jsp" %>
                </div>
            </div>
        </div>

        <%@ include file="../include/right-slidebar.jsp" %>


    </div>
</body>
<%@ include file="../include/footer.jsp" %>
