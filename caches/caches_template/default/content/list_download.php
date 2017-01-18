<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div id="content">
    <div class="list_top">
        <img src="<?php echo IMG_PATH;?>home.png" alt="" />
        <span><a href="<?php echo APP_PATH;?>">首页 &gt;</a><a href=""><?php echo catpos($catid);?>列表</a></span>
    </div>
    <div class="list_bottom">
        <div style="margin-top:0" class="waiji">
            <img src="<?php echo $CATEGORYS['32']['image'];?>" alt="" />
            <span class="wai_background">留学类别</span>
            <span class="wai_tu"></span>

            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4c80981a9ba6ea0e1c21876da6626da2&action=lists&catid=32&num=3&order=inputtime+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 3;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'32','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'32','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
            <div class="lai_content">
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="liuxue">
                    <a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
                </div>
                <?php $n++;}unset($n); ?>
            </div>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

        </div>
        <div class="waiji" >
            <img src="<?php echo $CATEGORYS['33']['image'];?>" alt="" />
            <span class="wai_background2">招生信息</span>
            <span class="wai_tu2"></span>

            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=eeba2dc98f78b22fc94039ceafb4d61d&action=lists&catid=33&num=3&order=inputtime+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 3;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'33','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'33','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
            <div class="lai_content">
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="liuxue">
                    <a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
                </div>
                <?php $n++;}unset($n); ?>
            </div>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <div class="waiji" >
            <img src="<?php echo $CATEGORYS['34']['image'];?>" alt="" />
            <span class="wai_background3">日常管理</span>
            <span class="wai_tu3"></span>

            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=89c10aaa2239bc21a625752183522e97&action=lists&catid=34&num=5&order=inputtime+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 5;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>'34','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>'34','order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
            <div class="lai_content">
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="liuxue2">
                    <a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a>
                </div>
                <?php $n++;}unset($n); ?>
            </div>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <div class="waiji">
            <img src="<?php echo $CATEGORYS['35']['image'];?>" alt="" />
            <span style="width:100px;" class="wai_background4">来华留学奖学金</span>
            <span style="left:100px;" class="wai_tu4"></span>
            <div class="lai_content">
                <div style="height:60px" class="liuxue3">
                    <a style="line-height:72px;" title="广东省政府来粤留学生奖学金管理暂行办法" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=show&catid=35&id=21">广东省政府来粤留学生奖学金管理暂行办法</a>
                </div>
                <div style="border:none;margin-top:12px;" class="liuxue3">
                    <a title="" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=show&catid=35&id=22"><p>广东省政府来粤留学生奖学金申请表(一)</p><p>GUANGDONG GOVERNMENT OUTSTANDING INTERNATIONAL STUDENT SCHOLARSHIP APPLICATION FORM</p></a>
                </div>
            </div>
        </div>


        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=20610d1974a931dac9e75b2263171842&action=category&catid=%24parentid&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$parentid,'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
        <div class="list_left">
            <ul>
                <?php $i=0;?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <li><a class="list_left_a" href="#"><span class="lo"><?php echo $r['catname'];?></span></a></li>
                <?php $n++;}unset($n); ?>
            </ul>
        </div>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


    </div>
</div>

<script>
    $(function(){

        inReadBar();

        $(".list_left_a").mouseover(function(){
            $(".list_left_a").removeClass("sideBar_a_acitve");
        }).mouseout(function(){
            //alert("aaa");
            //outReadBar();
        });
        
        $(".list_left_a").click(function(){
            var index = $(".list_left_a").index(this);
            $(".list_left_a").removeClass("sideBar_a_acitve");
            $(".box-shadow").removeClass("box-shadow");
            $(".waiji").eq(index).addClass("box-shadow");
            $(".list_left_a").eq(index).addClass("sideBar_a_acitve");
        })
    });
</script>
<?php include template("content","footer"); ?>