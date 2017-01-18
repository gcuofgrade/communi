<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--main-->
<div id="content">
            <div class="list_top">
                <img src="<?php echo IMG_PATH;?>home.png" alt="" />
                <span><a href="<?php echo APP_PATH;?>">首页 &gt;</a><a href=""><?php echo catpos($catid);?>列表</a></span>
            </div>
            <div class="list_bottom">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=c9b773d050051b8839750a98ad7267f5&action=lists&catid=%24catid&num=10&order=inputtime+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 10;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'inputtime DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                <div class="list_content">
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>">
                        <div class="information">
                            <img src="<?php echo $r['thumb'];?>" alt="" />
                            <p class="information_title"><?php echo $r['title'];?></p>
                            <div class="country_content">
                                <p><?php echo $r['description'];?></p>
                            </div>
                            <div class="list_more">
                                <a title="相关资讯" href="<?php echo $r['url'];?>">相关资讯 >></a>
                            </div>
                        </div>
                    </a>
                    <?php $n++;}unset($n); ?>
                </div>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            <?php include template("content","listSideBar"); ?>
            </div>
        </div>
        <script>
            $(function(){
                readBar();
            })
        </script>
<?php include template("content","footer"); ?>