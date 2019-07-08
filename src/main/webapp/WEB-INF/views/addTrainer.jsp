<%-- 
    Document   : addTrainer
    Created on : 7 Ιουλ 2019, 6:41:22 μμ
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Trainer</title>
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
            .addForm{
                width: 300px;
                height: 300px;
                position: absolute;
                top: 30%;
                left: 47%;
                margin-left: -50px;
            }
            .myButton {
                text-align: center;
                background-color:#45c755;
                -moz-border-radius:28px;
                -webkit-border-radius:28px;
                border-radius:28px;
                border:1px solid #18ab29;
                display:inline-block;
                cursor:pointer;
                color:#ffffff;
                font-family:Arial;
                font-size:14px;
                font-weight:bold;
                padding:10px 25px;
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

      
        <div class="addForm">
            <h2>Add Trainer</h2>
            <form action="addTrainerAfter" method="POST" >
                <div class="inputbox">
                    <input type="text" name="firstName"  value = "First Name">
                </div>
                <div class="inputbox">
                    <input type="text" name="lastName"  value = "Last Name">
                </div>
                <div class="inputbox">
                    <input type="text" name="subject"  value = "subject">
                </div>
                <br>
                <input type="submit" class="myButton" value="Add Trainer"> 
            </form>
        </div>
        

    </body>
</html>
