<%@include file="../header.jsp" %>
<title>JSP Page</title>
</head>
<body>
    <div class="container">
        <h1>Our Courses</h1>
        <div class="pull-right">
            <p>
        <a href="${BASE_URL}/courses/add" >
        <button class="btn btn-primary">Add Course</button>
        </a>
            </p>
        </div>
        <table class="table table-bordered table-hover table-striped">
            <tr>
                <th>Name</th>
                <th>Fees</th>
                <th>Duration</th>
                <th>Duration Type</th>
                <th>Status</th>
                <th>Action</th>
            </tr>

            <c:forEach var="course" items="${allcourses}">
                <tr>
                    <td>${course.courseName}</td>
                    <td>${course.price}</td>
                    <td>${course.duration}</td>
                    <td>
                        <c:choose>
                            <c:when test="${course.durationType=='W'}">
                                Week
                            </c:when>
                            <c:when test="${course.durationType=='D'}">
                                Days
                            </c:when>  
                            <c:when test="${course.durationType=='M'}">
                                Month
                            </c:when>
                            <c:when test="${course.durationType=='Y'}">
                                Year
                            </c:when>
                        </c:choose>

                    </td>


                    <td>${course.status}</td>
                    <td>
                        <a href="${BASE_URL}/courses/edit/${course.courseId}" id="deletedata">Edit</a>
                        <a href="${BASE_URL}/courses/delete/${course.courseId}">Delete</a>

                    </td>
                </tr>
            </c:forEach>
        </table>


    </div>
        <script>
            $("#deletedata").on("click",function(){
                alert("Are you sure to delete?");
            });
        </script>
       
        
</body>
 
</html>
