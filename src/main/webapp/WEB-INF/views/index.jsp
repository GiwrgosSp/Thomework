<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <style> 
            html {
                height: 100%;
            }
            body {
                height: 100%;
                margin: 0;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-image: linear-gradient(to top, #d299c2 0%, #fef9d7 100%);
            }

            .myButton {
                background-color:#45c755;
                -moz-border-radius:28px;
                -webkit-border-radius:28px;
                border-radius:28px;
                border:1px solid #18ab29;
                display:inline-block;
                cursor:pointer;
                color:#ffffff;
                font-family:Arial;
                font-size:17px;
                font-weight:bold;
                padding:16px 31px;
                text-decoration:none;
                text-shadow:2px 1px 50px #2f6627;
            }
            .myButton:hover {
                background-color:#5cbf2a;
            }
            .myButton:active {
                position:relative;
                top:1px;
            }
            .buttons {
                width: 500px;
                position: fixed;
                top: 50%;
                left: 55%;
                transform: translate(-50%, -50%);
            }

        </style>
    </head>

    <body>

        <div class = "buttons">

            <a href="trainers" class="myButton">View Trainers</a>

            <a href="addTrainer" class="myButton">Add Trainer</a>
        </div>






    </body>
</html>
