<%@ include file="${pageContext.request.contextPath}/include/header.jsp" %>
<body>
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
         data-sidebar-position="fixed" data-header-position="fixed">
        <%@ include file="../include/slidebar.jsp" %>

        
        
        <div class="body-wrapper">
            <%@ include file="../include/navbar.jsp" %>
            <div class="container-fluid">
                <%@ include file="${pageContext.request.contextPath}/user/newsfeed.jsp" %>
            </div>
             <%@ include file="${pageContext.request.contextPath}/include/advertising.jsp" %>
        </div>
            
            
            
    </div>
</body>
<%@ include file="../include/footer.jsp" %>
