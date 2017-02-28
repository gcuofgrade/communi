<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>style.css"/>
    <script src="<?php echo JS_PATH;?>ZoomPic.js"></script>
    <link rel="icon" href="<?php echo IMG_PATH;?>huaguang.ico" type="image/x-icon"/>


    <!--for the sideBar-->
    <script type="text/javascript">
        var catid = <?php echo $catid;?>;//get the cat id
    </script>
    <script src="<?php echo JS_PATH;?>jquery-1.4.4.min.js"></script>
    <script src="<?php echo JS_PATH;?>jquery.scrollTo.js"></script>
    <script src="<?php echo JS_PATH;?>min.js"></script>
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>min.css"/>
    <title>国际教育交流中心</title>
</head>
<body>
<div id="main_bc">
    <div id="main_bc_buttom">


        <div id="main">
            <div id="preloaderdiv"></div>
            <!--头部开始 -->
            <div id="head">
                <a href="<?php echo APP_PATH;?>"><img style="margin-left:128px;float:left;" src="<?php echo IMG_PATH;?>school.png" alt=""/></a>
                <div id="hr"></div>

                <img style="float:left;" src="<?php echo IMG_PATH;?>/wai.png" alt=""/>
                <div class="about" id="margin">
                    <a title="联系我们" target="_blank"
                       href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=67">联系我们</a>
                </div>
                <div class="about">
                    <a title="学校主页" target="_blank" href="http://www.gcu.edu.cn/">学校主页</a>
                </div>
                <div class="about">
                    <a title="English" target="_blank" href="http://www.gcu.edu.cn/en/">English</a>
                </div>
            </div>
            <!--导航栏开始 -->
            <div id="nav">
                <ul>
                    <li style="width:55px;"><a href="<?php echo APP_PATH;?>">首页</a></li>
                    <li>
                        <a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=19">机构介绍</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=82">机构项目</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=83">机构结构</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">国际交流</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=74">中欧交流项目</a></li>
                            <li><a  href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=75">中美交流项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=76">中亚交流项目</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=77">中澳交流项目</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">国际合作</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=22">中外合作办学项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=23">一学期交换生项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=84">互免学费交换生项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=24" style="font-size:12px">2+2/3+1学分互认项目</a>
                            </li>

                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=25" style="border:none">3+1+1本硕连读项目</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">港澳台合作</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=58">短期文化交流项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=59">互免学费交换生项目</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=60">一学期研习项目</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=61">保荐研究生项目</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">国际认证</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=62">IACBE国际认证</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=63">ABET国际认证</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=64">IEEE认证</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">外教管理</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=39">外教指南</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=40">聘请流程</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=41">证件办理</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=42">外教活动</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">来华留学</a>
                        <ul>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=32">留学类别</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=33">招生信息</a></li>
                            <li><a href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=34">日常管理</a></li>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=35">来华留学生奖学金</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">港澳台招生</a>
                        <ul>
                            <li><a style="border:none;" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=65">港澳台招生简介</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>