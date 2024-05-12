<aside class="left-sidebar">
    <!-- Sidebar scroll-->
    <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
            <a href="${pageContext.request.contextPath}" class="text-nowrap logo-img">
                <img src="${pageContext.request.contextPath}/static/images/logo.png" width="100" alt="" />
            </a>
            <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
                <i class="ti ti-x fs-8"></i>
            </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
            <ul id="sidebarnav">

                <li class="sidebar-item">
                    <a class="sidebar-link" href="${pageContext.request.contextPath}" aria-expanded="false">
                        <span>
                            <i class="ti ti-article"></i>
                        </span>
                        <span class="hide-menu">News Feed</span>
                    </a>
                </li>
                
                <li class="sidebar-item">
                    <a class="sidebar-link" href="${pageContext.request.contextPath}/group" aria-expanded="false">
                        <span>
                            <i class="ti ti-users"></i>
                        </span>
                        <span class="hide-menu">Group</span>
                    </a>
                </li>
                
             
             
                
               
                
                <li class="sidebar-item">
                    <a class="sidebar-link" href="${pageContext.request.contextPath}/event" aria-expanded="false">
                        <span>
                            <i class="ti ti-calendar-event"></i>
                        </span>
                        <span class="hide-menu">Event</span>
                    </a>
                </li>
                
                
               
                
                 <li class="sidebar-item">
                    <a class="sidebar-link" href="${pageContext.request.contextPath}/advertising" aria-expanded="false">
                        <span>
                            <i class="ti ti-speakerphone"></i>
                        </span>
                        <span class="hide-menu">Advertising</span>
                    </a>
                </li>
                
            </ul>

            <div class="unlimited-access hide-menu bg-light-primary position-relative mb-7 mt-5 rounded">
                <div class="d-flex">
                    <div class="unlimited-access-title me-3">
                        <h6 class="fw-semibold fs-4 mb-6 text-dark w-85">Buy Premium Account</h6>
                        <a href="" target="_blank" class="btn btn-primary fs-2 fw-semibold lh-sm">Go to billing setting </a>
                    </div>
                    <div class="unlimited-access-img">
                        <img src="${pageContext.request.contextPath}/static/images/backgrounds/rocket.png" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
        </nav>
    </div>
</aside>