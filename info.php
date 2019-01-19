<?php include 'connection.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		
	body{
		background-image:url("images/computer.jpg");
		background-repeat:no-repeat;
		background-size:cover;
		height:100%;
	    }
	    
	</style>
	 <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="REG/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="REG/css/style.css" rel="stylesheet" type="text/css" />
    <link href="REG/css/font-awesome.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Bootstrap</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="new.php"><i class="fa fa-home"></i> Home</a> </li>
                    <li><a href="info.php"><i class="fa fa-book"></i> Information</a> </li>
                    <li><a href="index.php"><i class="fa fa-sign-out"></i> Logout</a></li>
                
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
    <div class="row">
    	<div class="col-md-2 login-100"></div>
        
        <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
            <div class="registrationform" style="margin-top: 40px;">
                <div class="form-horizontal">
                    <form action="fullinfo.php" method="POST" >  
                    <fieldset>
                        <legend>Information Form <i class="fa fa-pencil pull-right"></i></legend>
                      
                        <div class="form-group">
                            <label  ID="Label1" Class="col-lg-3 control-label">Class</label>
                            <div class="col-lg-9">
                                <select Class="form-control ddl" name="cls">
                                    <option>Select Semester</option>
                                       <?php
                                        $qry1=mysqli_query($con,"SELECT * from subject")or die(mysqli_error($con));
                                        while ($row1=mysqli_fetch_array($qry1))
                                        {
                                    ?>
                                            <option value="<?php echo $row1['class']; ?>"> 
                                                <?php echo $row1['class']; ?> 
                                            </option>
                                    <?php        
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  ID="Label1" Class="col-lg-3 control-label">Semester</label>
                            <div class="col-lg-9">
                                <select Class="form-control ddl" name="sem">
                                    <option>Select class</option>
                                       <?php
                                        $qry1=mysqli_query($con,"SELECT * from subject")or die(mysqli_error($con));
                                        while ($row1=mysqli_fetch_array($qry1))
                                        {
                                    ?>
                                            <option value="<?php echo $row1['sem']; ?>"> 
                                                <?php echo $row1['sem']; ?> 
                                            </option>
                                    <?php        
                                        }
                                    ?>
                                </select>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <input type="submit" name="save"  class="btn btn-info" title="update detail" style="margin-left: 320px;width: 100px;">
                           
                        </div>
                    </fieldset>
                    </form>
                </div>
            </div>
        </div>
        </div>
    </div>
</body>
</html>