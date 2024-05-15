
<%-- 
    Document   : allEvent.jsp
    Created on : May 13, 2024, 7:09:20?AM
    Author     : mac
--%>
<style>
    .row>*{
        padding:0;
    }
    .card-body{
        padding: 10px;
    }
    .event-interest-btn{
        position: absolute;
        bottom: 2%;
        left: 3%;
        width: 94%;
    }
    .card{
        padding-bottom:42px;
    }
    @media (max-width: 750px) {
        .event-interest-btn{
            width: unset;
            left: 1.5%;

        }
    }
</style>
<h2 class="titile">Explore all events</h2>


<div class="row">
    <div class="card col-md-3 m-2">
        <img src="${pageContext.request.contextPath}/upload/eda49b3478bea2565bcc9a5ec538b84b.png" class="card-img-top event-img" alt="...">
        <div class="card-body">
            <h5 class="card-title">Sắp ra mắt BEACH LUXURY HOMES</h5>
            <p class="card-text">Start: DD/MM/YY </p>
            <p class="card-text">End: DD/MM/YY </p>
            <p class="card-text">Organize: FPT Smoker </p>


            <a href="#" class="btn btn-primary mt-3 event-interest-btn">Interest</a>
        </div>
    </div>
    <div class="card col-md-3 m-2">
        <img src="${pageContext.request.contextPath}/upload/tien-do-quy-4-4.png" class="card-img-top event-img" alt="...">
        <div class="card-body">
            <h5 class="card-title">Event 1 </h5>
            <p class="card-text">Start: DD/MM/YY </p>
            <p class="card-text">End: DD/MM/YY </p>
            <p class="card-text">Organize: FPT Smoker </p>


            <a href="#" class="btn btn-primary mt-3 event-interest-btn">Interest</a>
        </div>
    </div>

    <div class="card col-md-3 m-2">
        <img src="${pageContext.request.contextPath}/upload/ss1.png" class="card-img-top event-img" alt="...">
        <div class="card-body">
            <h5 class="card-title">Event 2</h5>
            <p class="card-text">Start: DD/MM/YY </p>
            <p class="card-text">End: DD/MM/YY </p>
            <p class="card-text">Organize: FPT Smoker </p>


            <a href="#" class="btn btn-primary mt-3 event-interest-btn">Interest</a>
        </div>
    </div>

    <div class="card col-md-3 m-2">
        <img src="${pageContext.request.contextPath}/upload/deli-2.png" class="card-img-top event-img" alt="...">
        <div class="card-body">
            <h5 class="card-title">Event 3</h5>
            <p class="card-text">Start: DD/MM/YY </p>
            <p class="card-text">End: DD/MM/YY </p>
            <p class="card-text">Organize: FPT Smoker </p>



            <a href="#" class="btn btn-primary mt-3 event-interest-btn">Interest</a>
        </div>
    </div>


    <div class="card col-md-3 m-2">
        <img src="${pageContext.request.contextPath}/upload/z5402380303123_ac37a5c776c26769d9e5f7bdd9f19426.jpg" class="card-img-top event-img" alt="...">
        <div class="card-body">
            <h5 class="card-title">Event 3 test xuong dong</h5>
            <p class="card-text">Start: DD/MM/YY </p>
            <p class="card-text">End: DD/MM/YY </p>

            <a href="#" class="btn btn-primary w-100 mt-3 event-interest-btn">Interest</a>
        </div>
    </div>



</div>
