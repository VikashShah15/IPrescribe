<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IPrescribe.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="favicons/images-favicon.png" />
    <title></title>
    <!-- page css -->
    <link href="Content/css/pages-login-register-lock.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Content/css/css-style.min.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-default card-no-border">
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Patient Portal</p>
        </div>
    </div>
    <section id="wrapper" style="height:657px;">
        <div class="login-register" style="background-color: #472e7c;">
            <div class="login-box card">
                <div class="card-body">
                    <form class="form pt-3" id="loginform" action="/">
                        <h3 class="text-center m-b-20">Sign In</h3>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon11"><i class="ti-user"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon11" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon33"><i class="ti-lock"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon33" runat="server" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                                <div class="d-flex no-block align-items-center">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customCheck1" /><label class="custom-control-label" for="customCheck1">Remember me</label>
                                    </div>
                                    <div class="ml-auto">
                                        <a href="/RecoverPassword.aspx" id="to-recover" class="text-muted"><i class="fas fa-lock m-r-5"></i>Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <div class="col-xs-12 p-b-20">
                                <%--<button class="btn btn-block btn-lg btn-info btn-rounded" type="submit">Log In</button>--%>
                                <a href="~/Dashboard.aspx" class="btn btn-lg btn-info btn-rounded m-l-5" runat="server" style="width: 60%">Log In</a>
                            </div>
                        </div>
                        
                        <div class="form-group m-b-0">
                            <div class="col-sm-12 text-center">
                                Don't have an account? <a href="/RegisterMail.html" class="text-info m-l-5"><b>Sign Up</b></a>
                            </div>
                        </div>
                    </form>
                    <form class="form pt-3" id="recoverform" action="/">
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <h3>Login To Your Account</h3>
                                <p class="text-muted">Enter the details below!</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="mfirstname"><i class="ti-user"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="First Name" aria-label="First Name" aria-describedby="mfirstname" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="mlastname"><i class="ti-user"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Last Name" aria-label="Last Name" aria-describedby="mlastname" runat="server" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="mdob"><i class="ti-calendar"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="DOB - mm/dd/yyyy" aria-label="DOB" aria-describedby="mdob" runat="server" />
                            </div>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <a href="javascript:void(0)" id="to-otp" class="btn btn-lg btn-info btn-rounded" style="width: 60%">Submit</a>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <a href="javascript:void(0)" id="to-back1" class="text-muted"><i class="fas fa-arrow-left m-r-5"></i>Back To Sign In</a>
                        </div>
                    </form>
                    <form class="form pt-3" id="otpform" action="/">
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <h3>Enter the OTP below</h3>
                                <p class="text-muted">Please enter the verification code you received</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="motp"><i class="ti-lock"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Enter Code" runat="server" />
                            </div>
                            <p class="text-muted">Code is valid for 5 minutes or 3 attempts</p>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <a href="javascript:void(0)" id="to-otp1" class="btn btn-lg btn-info btn-rounded" style="width: 60%">Submit</a>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <a href="javascript:void(0)" id="to-otpbackreturn" class="text-muted"><i class="fas fa-arrow-left m-r-5"></i>Back To Sign In</a>
                        </div>
                    </form>
                    <form class="form pt-3" id="otpmobileform" action="/">
                        <div class="form-group ">
                            <div class="col-xs-12">
                                <h3>Select mobile number below</h3>
                                <p class="text-muted">We will send verification code to confirm access to below number. Standard text messaging rates apply.</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" />
                                        <label class="custom-control-label" for="customRadio1">***-***-0779</label>
                                    </div>
                                </div>
                            </div>
                            <%-- <p class="text-muted">Code is valid for 5 minutes or 3 attempts</p>--%>
                        </div>
                        <div class="form-group text-center m-t-20">
                            <div class="col-xs-12">
                                <a href="javascript:void(0)" id="to-mobileotp1" class="btn btn-lg btn-info btn-rounded" style="width: 60%">Send Code</a>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <a href="javascript:void(0)" id="to-otpback" class="text-muted"><i class="fas fa-arrow-left m-r-5"></i>Return To Sign In Page</a>
                            <a href="javascript:void(0)" class="" style="float: right">Resend Code</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>

    </section>
    <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
    <script src="Content/js/jquery-jquery-3.2.1.min.js"></script>
    <script src="Content/js/popper-popper.min.js"></script>
    <script src="Content/js/js-bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".preloader").fadeOut();
        });
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        });
        // ==============================================================
        // Login and Recover Password
        // ==============================================================
        $('#to-mobile').on("click", function () {
            $("#loginform").slideUp();
            $("#recoverform").fadeIn();
        });
        $('#to-back').on("click", function () {
            $("#loginform").fadeIn();
            $("#recoverform").slideUp();
        });
        $('#to-back1').on("click", function () {
            $("#loginform").fadeIn();
            $("#recoverform").slideUp();
        });
        $('#to-otpback').on("click", function () {
            $("#loginform").fadeIn();
            $("#otpmobileform").slideUp();
        });
        $('#to-mobileotp1').on("click", function () {
            $("#otpform").fadeIn();
            $("#otpmobileform").slideUp();
        });
        $('#to-otp').on("click", function () {
            $("#otpmobileform").fadeIn();
            $("#recoverform").slideUp();
        });
        $('#to-otpbackreturn').on("click", function () {
            $("#loginform").fadeIn();
            $("#otpmobileform").slideUp();
            $("#otpform").slideUp();
        });
    </script>
</body>
</html>
