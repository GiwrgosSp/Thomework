<%-- 
    Document   : trainers
    Created on : 7 Ιουλ 2019, 5:59:02 μμ
    Author     : George
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Trainers</title>
        <script  src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script  src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script  src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">

        <style type="text/css">
            
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
        </style>
        <script>
            $(document).ready(function () {
                $('#trainerslist').DataTable();
            });
        </script>

    </head>
    <body>
        <h1>${greeting} list!</h1>
        <table id="trainers" class="table table-striped table-bordered"  style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Subject</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="item">
                    <tr>
                        <td>${item.trainerId}</td>
                        <td>${item.firstName}</td>
                        <td>${item.lastName}</td>
                        <td>${item.subject}</td>
                        <td><a href="trainers">Update   </a> <a href="trainers">    Delete</a></td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>