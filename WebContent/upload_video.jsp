<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="zh-cmn-Hans">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>上传视频</title>
    
        <!--======== All Stylesheet =========-->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/linearicons.css" rel="stylesheet">
        <!--=== plugins ===-->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
        <!--=== end plugins ===-->
        <link rel="shortcut icon" href="Pictures/logo.ico">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,900,700,600,300,200' rel='stylesheet'
            type='text/css'>
        <style type="text/css">
    
    
    #video.min {
        width: 320px;
        height: 200px;
        position: fixed;
        left: auto;
        top: auto;
        right: 0;
        bottom: 0;
    }
         
    </style>
    </head>

    <body data-spy="scroll" data-target=".nav-top">
        <script type="text/javascript">
        window.onscroll = function () {
            var top = document.documentElement.scrollTop||document.body.scrollTop;
            document.getElementById("video").className = top>400 ? "min" : "";
        }
        </script>
            
        <!--======== header =========-->
        <header id="home" data-spy="scroll" data-target="#top-nav">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- menu 4 -->
                        <div class="navbar navbar-default navbar-fixed-top default-menu menu-4" role="navigation">
                            <div class="container">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                        data-target="#menu-4" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="scroll" href="index.jsp"><img src="Pictures/logo_sub.png" width="182" height="70"
                                            align=top /> </a>
                                </div>
        
                                <div class="collapse navbar-collapse top-nav" id="menu-4">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li></li>
                                        <li>
                                            <a class="scroll" href="shipinqv.jsp">
                                                <font size=4 face="Microsoft Yahei light"><em class="fa fa-video-camera"></em>
                                                    视频区</font>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="scroll" href="ziliaoqv.jsp">
                                                <font size=4 face="Microsoft Yahei light"><em class="fa fa-paperclip"></em> 资料区
                                                </font>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="scroll" href="luntanqv.jsp">
                                                <font size=4 face="Microsoft Yahei light"><em class="fa fa-bullhorn"></em> 论坛区
                                                </font>
                                            </a>
                                        </li>
                                        <%
            String user_id = (String)session.getAttribute("user_id");
            // String user_id = request.getParameter("user_id");
            if (user_id == null){
                %>
                                        <li><button type="button" class="btn btn-default navbar-btn"
                                                onclick="window.location.href = 'welcome.jsp'">注册/登录</button></li>
                                        <%
            }
            else{
                %>
                <li> <a class="scroll" href="#" data-toggle="dropdown"><font size=4><em class="fa fa-user"></em>&ensp;</font></a>
                    <ul class="dropdown-menu">
                    <li><a href="user.jsp"><em class="fa fa-user-md"></em> 我的主页</a>
                    </li>
                    <li><a href="logout.jsp"><em class="fa fa-power-off"></em> 我要登出</a>
                    </li>
                </ul>	</li>
        
                <li><a class="scroll" href="#" data-toggle="dropdown"><font size=4><em class="fa fa-plus"></em>&ensp;</font></a>
                                        
                <ul class="dropdown-menu">
                    <li><a href="upload_video.jsp?uptype=video"><em class="fa fa-video-camera"></em> 发表视频</a>
                    </li>
                    <li><a href="upload_file.jsp?uptype=material"><em class="fa fa-paperclip"></em> 分享资料</a>
                    </li>
                    <li><a href="add_post.jsp"><em class="fa fa-bullhorn"></em> 发表帖子</a>
                    </li>
                </ul>
                    </li>
                                            
                                        <%
            }                  
                                        %>
                                    </ul>
        
                                </div>
                            </div>
                        </div>
                        <!-- end menu -->
                    </div>
                </div>
            </header>
        
            <!--======== support =========-->
        
            <section class="support">
                <img src="Pictures/back-narrow.png" style="vertical-align: middle" align=right />
            
            <!--======== 发帖 =========-->
            <section>
                <br>
                <div class="container" style="background: #FFFFFF">
                    <div class="container">
                    <div class="row">
                        <div class="about-content">
                            <br><br>
                                <h1 class="section-title"><em class="fa fa-video-camera"></em> 上传视频</h1>
                                <div class="col-md-10 col-md-offset-1">
                                        <form action="catch_video.jsp" method="post" enctype="multipart/form-data">
                                            选择一个文件:
                                            <input type="file" name="uploadFile"/>
                                            <br>
                                            <label>板块：</label>
                                            <select name="block_id" class="list">
                                            <option value=1> math</option>
                                            <option value=2> cs</option>
                                            <option value=3> English</option>
                                            </select>
                                            <br>
                                            <label>标题：</label>
                                            <input name="title" type="text">
                                            <br>
                                            <br/><br/>
                                            <input type="submit" value="上传" class="btn btn-default navbar-btn" />
                                        </form>
                        </div>
        
                            </div>
                        <div class="col-md-10 col-md-offset-1">
                          <div class="row">
                        
                        
                        
                    </div>
                        </div>
                    </div>
                </div>
                
            </section></section>
            <!--======== footer =========-->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-md-12 text-center">
                            <p>Designed By KevSharp</p>
                        </div>
                    </div>
                </div>
            </footer>
            <!--======== end footer =========-->
        
            <!--======== All Javascript =========-->
            <script src="js/jquery-2.1.1.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/custom.js"></script>
        </body>

</html>
