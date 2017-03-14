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
                <a href="<?php echo APP_PATH;?>"><img style="margin-left:108px;float:left;" src="<?php echo IMG_PATH;?>school.svg" height="120px" width="330px" alt=""/></a>
                <div id="hr"></div>

                <img style="float:left;margin-left:10px" src="<?php echo IMG_PATH;?>/wai.svg" height="110px" width="335px" alt=""/>
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
                <div id="sousuo">
                    <form action="<?php echo APP_PATH;?>index.php" method="get" target="_blank">
                        <input type="hidden" name="m" value="search"/>
                        <input type="hidden" name="c" value="index"/>
                        <input type="hidden" name="a" value="init"/>
                        <input type="hidden" name="typeid" value="1" id="typeid"/>
                        <input type="hidden" name="siteid" value="<?php echo $siteid;?>" id="siteid"/>
                        <div id="search" style="display:inline-block;">
                            <input type="text" name="q" id="sousuo-text" placeholder="关键字搜索" style="outline:none;">
                        </div>
                        <div style="display:inline-block;">
                            <input type="submit" id="sousuo-button" value="" />
                        </div>

                    </form>

                </div>
            </div>
            <!--导航栏开始 -->
            <div id="nav">
                <ul>
                    <li style="width:55px;"><a href="<?php echo APP_PATH;?>">首页</a></li>
                    <li>
                        <a href="#">机构介绍</a>

                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=e5974b95a2d0c7bab4346b6ea8c823af&action=category&catid=73&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'73','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                        <ul>
                            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                            <?php $n++;}unset($n); ?>
                        </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    </li>
                    <li><a href="#">国际交流</a>

                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=014862518820b55478b63090458cdd1b&action=category&catid=12&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'12','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                        <ul>
                            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                            <?php $n++;}unset($n); ?>
                        </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    </li>
                    <li><a href="#">国际合作</a>
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=81c039a698fa4b1e0d93c68a6d75bba8&action=category&catid=13&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'13','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                        <ul>
                            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                            <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                            <?php $n++;}unset($n); ?>
                        </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </li>
                    <li><a href="#">港澳台合作</a>

                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=8bd969f295ccdc5c92583eb942b84cb6&action=category&catid=14&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'14','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                            <ul>
                                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                                <?php $n++;}unset($n); ?>
                            </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    </li>
                    <li><a href="#">国际认证</a>

                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4c61bd9d8a439258c203d1637907d4a7&action=category&catid=15&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'15','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                            <ul>
                                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                                <?php $n++;}unset($n); ?>
                            </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    </li>
                    <li><a href="#">外教管理</a>

                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=fbd5d418bdf219587d0c19a5c7d20ec5&action=category&catid=16&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'16','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                            <ul>
                                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                                <?php $n++;}unset($n); ?>
                            </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

                    </li>
                    <li><a href="#">来华留学</a>
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=eb2f2a6d1fcec41e75d5204e74be0f3b&action=category&catid=17&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'17','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                            <ul>
                                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                                <?php $n++;}unset($n); ?>
                            </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </li>
                    <li><a href="#">港澳台招生</a>
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b36736b3a076639c40c3e652e0078b99&action=category&catid=18&num=7&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'18','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'7',));}?>
                            <ul>
                                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                                <li><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
                                <?php $n++;}unset($n); ?>
                            </ul>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </li>
                </ul>
            </div>