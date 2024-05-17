<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>FPTer - ...</title>
        <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/static/images/logos/favicon.png" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.min.css" />
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />-->

        <!--<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet">-->
        <style>
            .row>*{
                padding:0;
            }
            .card-body{
                padding: 20px;
            }
            .app-header{
                padding: 0 12px;
            }
            .container-fluid{
                width: calc(100% - 248px);
                position: relative;
                right: 123px;
            }
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
            @media (max-width: 1000px) {
                .row .m-2{
                    margin: 0 !important;
                }
                .container-fluid{
                    width: calc(100%);
                    right: 0;
                }

                .right-sidebar{
                    display: none;
                }
                #boxchat{
                    display: none !important;
                }
            }
        </style>
    </head>
