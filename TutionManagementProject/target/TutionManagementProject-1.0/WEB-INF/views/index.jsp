<%@include file="header.jsp" %> 
<title>JSP Page</title>
</head>

<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${BASE_URL}/">Tution Centre</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${BASE_URL}/courses">Courses<span class="sr-only">(current)</span></a></li>
                    <li><a href="${BASE_URL}/teachers">Teachers</a></li>
                    <li><a href="${BASE_URL}/enquiries">Enquiries</a></li>

                    <!--        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                              </ul>
                            </li>-->

                </ul>

                <!--      <form class="navbar-form navbar-left">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                      </form>-->

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${BASE_URL}/admin">ADMIN LOGIN</a></li>

                    <!--        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                              </ul>
                            </li>-->

                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                List Of Users
                <div class="list-group">
                    <a href="#" class="list-group-item">No Name 1</a>
                    <a href="#" class="list-group-item">No Name 2</a>
                    <a href="#" class="list-group-item">No Name 3</a>
                    <a href="#" class="list-group-item">No Name 4</a>
                    <a href="#" class="list-group-item">No Name 5</a>
                </div>



            </div>
            <div class="col-md-10">
                We provide quality skills for our students. Our only goal is to make a professional in the field of IT.
                We have skilled facilitators who are edger to teach to the students. Ok badi nai vayo hai guff chai etc.
                .......................................................................................................
                kk lekhnu parne ho paxi sochaula
                <br>
                BRB


            </div>
        </div>



        <!--    <div class="container">
                <h1>Spring Maven Hibernate Tution mgmt system</h1>
                <a href="${BASE_URL}/courses">Courses</a>
                <a href="${BASE_URL}/teachers">Teachers</a>
                <a href="${BASE_URL}/enquiries">Enquiries</a>
                <a href="${BASE_URL}/admin">ADMIN LOGIN</a>
            </div>-->
    </div>
</body>
</html>
