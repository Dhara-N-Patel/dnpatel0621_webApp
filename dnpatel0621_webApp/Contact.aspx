<%@ Page Title="Contact" Language="C#"  AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="dnpatel0621_webApp.Contact" %>


    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!--<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous" />
    <title>Contact | Dhara Patel - .Net Developer</title>
    <link href="css/navbar.css" rel="stylesheet" type="text/css"/>
    <link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-countryselector.min.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
    <link href='css/custom.css' rel='stylesheet' type='text/css' />
    <!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.-->
    <script>
        var __adobewebfontsappname__ = "dreamweaver"
    </script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
    <script src="http://use.edgefonts.net/source-sans-pro:n2:default.js" type="text/javascript"></script>
    <!--flagstrap plugin-->
    <link href="css/flags.css" rel="stylesheet" />
    <script src="js/jquery.flagstrap.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color: white; margin-right: 7%; margin-left: 7%;">
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header" style="margin-left:7%;"">
                <button type="button" class="navbar-toggle" data-toggle="coll
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="HomePage.html" ><img style="margin-top:0%; background-color: #808080" src="images/DP.PNG" width="62px" height="50%" /></a>
            </div>
            <div class="collapse navbar-collapse" style="float:right; padding-right:7%;" >
                <ul class="nav navbar-nav" style="font-weight:bolder;">
                   
                    <li><a href="HomePage.html"><strong>Home</strong></a></li>
                    <li><a href="About.html" target="_blank"><strong>About</strong></a></li>
                    <li class="active"><a href="Contact.aspx" target="_blank"><strong>Contact</strong></a></li>
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><strong>Links</strong><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="https://www.linkedin.com/in/dharapatel0621/" style="color:black;"><strong>LinkedIN</strong></a></li>
                            <li><a href="https://drive.google.com/file/d/0B2CPiIt37lDgV0dHQ3RJXzB4R2s/view?usp=sharing" style="color:black;"><strong>Resume</strong></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Main Container -->
    <div class="container container-fluid center-block" style="background-color: white;">
        <form role="form" runat="server">
            <div class="messages"></div>

            <div class="controls">
                 <section class="hero" id="hero" style="margin-left:1%; margin-right:1%;margin-top:5%;">
                    <h2 class="hero_header1 center-block">Dhara Patel <span class="tagline light" style="font-weight: bold">.Net Developer</span></h2>
                    <h3 class="tagline" style="margin-left: 2%; text-align: left;"><strong>More Information</strong></h3>
                    <p class="tagline" style="margin-left: 2%; text-align: left; font-weight: bold">
                        Let's get connected for the further communication.
                    </p>
                </section>
                <div class="container-fluid has-danger" style="background-color: white; margin-bottom: 3%; margin-top: 3%;">
                    <div class="container-fluid">
                            <h3 class="hero_header center-block" style="margin-top: 0%; text-align: center"><strong>For More Information</strong></h3>
                            <h4 class="tagline" style="color: black; margin-top: 2%"><strong>Submit the form below:</strong></h4>
                            <div class="form-group" style="margin-top: 4%;">
                                <asp:TextBox ID="form_name" class="form-control textbox center-block" runat="server" placeholder="First Name *" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="form_lastname" class="form-control textbox center-block" runat="server" placeholder="Last Name *" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="form_email" class="form-control textbox center-block" runat="server" placeholder="Work Email *" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="form_phone" class="form-control textbox center-block" runat="server" placeholder="Work Phone" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <select id="country" class="form-control textbox center-block" value="USA" data-code-mode="alpha3" data-role="country-selector" style="margin-bottom: 2%; font-size: 12pt;"></select>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="form_Company" class="form-control textbox center-block" runat="server" placeholder="Company Name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="form_message" class="form-control textbox center-block" runat="server" placeholder="Message *" TextMode="MultiLine" required="required"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="Submit" runat="server" OnClick="BtnContact_Click" Text="Submit" class="buttonSubmit center-block" />
                            </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="copyright" style="margin-left: 1.5%; margin-right: 1.5%;">
            &copy;2017 - <strong>Dhara Patel</strong>
        </div>
    </div>
    <!-- Main Container Ends -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js "></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js " integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous "></script>
    <script src="js/jquery.countrySelector.js "></script>
    <script src="js/validator.js"></script>
    <script src="js/contactForDemo.js"></script>
    <script src="js/navbar.js"></script>
</body>
</html>

