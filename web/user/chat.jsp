<!--.sender: nguoi gui, nguoc lai voi tat ca-->
<style>
    .chat-box .rounded-circle{
        width: 30px;
        height: 30px;
        object-fit: cover;
    }
    .chat-box .card{
        width: 320px;
    }
    .sender .text-muted{
        float: right;
    }
    .chat-box .rounded-circle{
        
}
</style>
<div class="container d-flex chat-box ">
    <div class="card ">
        <div class="d-flex flex-row shadow p-2">
            <i class="fas fa-chevron-left"></i>

            <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown" aria-expanded="false">
                <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Kh%C3%A1_B%E1%BA%A3nh_khai_tr%C6%B0%C6%A1ng_shop_b%C3%A1n_qu%E1%BA%A7n_%C3%A1o_%E1%BB%9F_Qu%E1%BB%91c_Oai_2019-03-16.png" alt="" width="35" class="rounded-circle">
            </a>

            <h6 class="card-title fw-semibold my-2 mx-2 d-inline">Khá B</h6>
            <i class="fas fa-times"></i>
        </div>
        
        <!--noi dung chat-->
        <div class="d-flex flex-row p-3">
            <img class="rounded-circle" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Kh%C3%A1_B%E1%BA%A3nh_khai_tr%C6%B0%C6%A1ng_shop_b%C3%A1n_qu%E1%BA%A7n_%C3%A1o_%E1%BB%9F_Qu%E1%BB%91c_Oai_2019-03-16.png" width="30" height="30">
            <div class="chat ml-2 px-3 w-100">Hello </div>
        </div>

        <div class="d-flex flex-row p-3 sender">
            <div class="bg-white mr-2 px-3 w-100"><span class="text-muted">Hello .</span></div>
            <img class="rounded-circle" src="http://localhost:8080/FPTer/static/images/user.png" width="30" height="30">
        </div>

        <div class="d-flex flex-row p-3">
            <img class="rounded-circle" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Kh%C3%A1_B%E1%BA%A3nh_khai_tr%C6%B0%C6%A1ng_shop_b%C3%A1n_qu%E1%BA%A7n_%C3%A1o_%E1%BB%9F_Qu%E1%BB%91c_Oai_2019-03-16.png" width="30" height="30">
            <div class="bg-white mr-2 px-3 w-100">
                <img src="${pageContext.request.contextPath}/upload/deli-2.png" width="200">
            </div>
        </div>

        <div class="d-flex flex-row p-3">
            <img class="rounded-circle" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Kh%C3%A1_B%E1%BA%A3nh_khai_tr%C6%B0%C6%A1ng_shop_b%C3%A1n_qu%E1%BA%A7n_%C3%A1o_%E1%BB%9F_Qu%E1%BB%91c_Oai_2019-03-16.png" width="30" height="30">
            <div class="chat ml-2 px-3 w-100"><span class="text-muted dot">. . .</span></div>
        </div>

        
        
        
        <div class="form-group px-3 py-3">
            <textarea class="form-control" rows="1" placeholder="Type your message"></textarea>
        </div>
    </div>
</div>