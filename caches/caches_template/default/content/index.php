<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--main-->
<div id="focus_Box">
    <span class="prev">&nbsp;</span>
    <span class="next">&nbsp;</span>
    <div class="left"></div>
    <div class="right"></div>
    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=02fe94705996b0630ae6bed57f081543&action=position&posid=1&order=listorder+DESC&thumb=1&num=6\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'1','order'=>'listorder DESC','thumb'=>'1','limit'=>'6',));}?>
    <ul>
    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
        <li>
            <a href="<?php echo $r['url'];?>"><img  src="<?php echo $r['thumb'];?>" /></a>
            <p><span><?php echo $r['title'];?></span></p>
        </li>
    <?php $n++;}unset($n); ?>
    </ul>
    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<!--content开始 -->
<div id="content" class="clearfix">
    <div class="notice">
        <div class="top">
            <img src="<?php echo IMG_PATH;?>notice.png" alt="" />
            <a style="float:right;margin-top:28px;" href=""><img src="<?php echo IMG_PATH;?>more.png" alt="" /></a>
        </div>
        <div class="notice_bottom">
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=c09355264f20e38285851e2ef913732c&action=lists&catid=11&num=8&order=inputtime+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'11','order'=>'inputtime DESC','limit'=>'8',));}?>
            <ul>
            <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
                <li>
                    <span class="notice_time"><?php echo date('Y-m-d',$v[inputtime]);?></span>
                    <span class="notice_jiao"></span>
                    <span class="notice_content"><a title="<?php echo $v['title'];?>" href="<?php echo $v['url'];?>"><?php echo $v['title'];?></a></span>
                </li>
            <?php $n++;}unset($n); ?>
            </ul>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
    </div>
    <div class="news">
        <div class="top">
            <img src="<?php echo IMG_PATH;?>news.png" alt="" />
            <a style="float:right;margin-top:28px;" href=""><img src="<?php echo IMG_PATH;?>more.png" alt="" /></a>
        </div>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f5781b79d0b89174852f392f2b7ce462&action=lists&catid=10&order=updatetime+DESC&thumb=1&num=1&return=info\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$info = $content_tag->lists(array('catid'=>'10','order'=>'updatetime DESC','thumb'=>'1','limit'=>'1',));}?>
        <div class="look">
        <?php $n=1;if(is_array($info)) foreach($info AS $v) { ?>
            <img src="<?php echo thumb($v[thumb],148,98);?>" alt="" />
            <span class="look_time"><?php echo date('Y-m-d',$v[inputtime]);?></span>
            <span class="look_jiao"></span>
            <span class="title"><a title="<?php echo str_cut($v['title'],23);?>" href="#"><?php echo str_cut($v['title'],23);?></a></span>
            <div class="size">
                <p><?php echo str_cut($v['description'],200);?></p>
            </div>
        <?php $n++;}unset($n); ?>
        </div>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=65f42c8b7a2d504fa0b1c769e5e17fab&action=lists&catid=10&num=7&order=id+DESC&return=info\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$info = $content_tag->lists(array('catid'=>'10','order'=>'id DESC','limit'=>'7',));}?>
        <div class="news_bottom">
            <ul>
            <?php $n=1;if(is_array($info)) foreach($info AS $v) { ?>
                <li>
                    
                        <a title="<?php echo $v['title'];?>" href="<?php echo $v['url'];?>"><span class="span_left"><?php echo str_cut($v['title'],40);?></span><span class="span_right"><?php echo date('Y-m-d',$v[inputtime]);?></span></a>
                   
                </li>
            <?php $n++;}unset($n); ?>
            </ul>
        </div>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>
    <div class="content-bottom">
        <a href="#"><div style="margin-left:50px;" class="liu"></div></a>
        <a href="#"><div style="background-position:-116px 0" class="liu"></div></a>
        <a href="#"><div style="background-position:-235px 0" class="liu"></div></a>
        <a href="#"><div style="background-position:-354px 0" class="liu"></div></a>
        <a href="#"><div style="background-position:-475px 0" class="liu"></div></a>
        <a href="#"><div class="liu"></div></a>
    </div>
    <div class="content-bottom-lo">
        <div class="partner">
            <p>合作伙伴</p>
        </div>

        <div id="demo">
            <div id="indemo">
                <div id="demo1">
                    <a href="#"><img src="<?php echo IMG_PATH;?>1.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>2.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>3.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>4.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>5.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>6.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>7.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>8.png" alt="#" /></a>
                    <a href="#"><img src="<?php echo IMG_PATH;?>9.png" alt="#" /></a>
                </div>
                <div id="demo2"></div>
            </div>
        </div>
    </div>
    <div id="select">
        <select class="select">
            <option selected="selected">-------教学单位------</option>
            <option value="">汽车与交通工程学院</option>
            <option value="">机械工程学院</option>
            <option value="">电子信息工程学院</option>
            <option value="">电气工程学院</option>
            <option value="">计算机工程学院</option>
            <option value="">经济学院</option>
            <option value="">管理学院</option>
            <option value="">外国语学院</option>
            <option value="">珠宝学院</option>
            <option value="">建筑学院</option>
            <option value="">土木工程学院</option>
            <option value="">国际商学院</option>
            <option value="">中兴通信工程学院</option>
            <option value="">国际工程学院</option>
        </select>
        <select class="select">
            <option selected="selected">-------职能部门------</option>
            <option value="">学校办公室</option>
            <option value="">教务处</option>
            <option value="">学生处</option>
            <option value="">学校团委</option>
            <option value="">人事处</option>
            <option value="">后勤处</option>
            <option value="">财务处</option>
            <option value="">图书馆</option>
            <option value="">招生处</option>
            <option value="">体育部</option>
            <option value="">学生就业指导中心</option>
            <option value="">思想政治理论课教学部</option>
            <option value="">继续教育与培训中心</option>
            <option value="">国际教育与交流中心</option>
            <option value="">网络与信息中心</option>
            <option value="">工程研究院</option>
            <option value="">科研处</option>
            <option value="">采报中心</option>
            <option value="">心理中心</option>
        </select>
        <select class="select">
            <option selected="selected">-------友情链接------</option>
            <option value="">教育部涉外监管信息网</option>
            <option value="">教育部留学服务中心</option>
            <option value="">广东省外国专家局</option>
        </select>
    </div>
</div>
<?php include template("content","footer"); ?>