<%@include file="../header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Add new Course</h1>
            
            <form:form method="post" action="updated" modelAttribute="courseForm" commandName="course" role="form" >
                <div class="form-group" hidden="true">
                    <form:label path="courseId">Course Id: </form:label>
                    <form:input path="courseId" type="number" class="form-control" name="courseId" placeholder="Enter new course Id"/>
                </div>
                <div class="form-group">
                    <form:label path="courseName">Course Name: </form:label>
                    <form:input path="courseName" type="text" class="form-control" name="courseName" placeholder="Enter new course name"/>
                </div>
                <div class="form-group">
                    <form:label path="price">Price: </form:label>
                    <form:input path="price" type="number" class="form-control" name="price" placeholder="Enter course price"/>
                </div>
                <div class="form-group">
                    <form:label path="duration">Duration: </form:label>
                    <form:input path="duration" type="text" class="form-control" name="duration" placeholder="Enter course duration"/>
                </div>
                <div class="form-group">
                    <form:label path="courseCode">Course Code </form:label>
                    <form:input path="courseCode" type="text" class="form-control" name="courseCode" placeholder="Enter course code"/>
                </div>
                <div class="form-group">
                    <form:label path="durationType">Duration type: </form:label>
                    <form:select multiple="single" path="durationType" name="durationType">
                        
                        <form:option value="d">Days</form:option>
                        <form:option value="w">Weeks</form:option>
                        <form:option value="m">Months</form:option>
                        <form:option value="y">Years</form:option>
                    </form:select>
                </div>
                <div class="checkbox">
                <form:label path="status">
                    <form:checkbox  path="status" name ="status"/>Status
                </form:label>
                </div>
                    <form:button type="submit" class="btn btn-success">Save</form:button>
            </form:form>
        </div>
    </body>
</html>
