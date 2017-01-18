<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--main-->
<div id="content">
            <div class="list_top">
                <img src="<?php echo IMG_PATH;?>home.png" alt="" />
                <span><a href="<?php echo APP_PATH;?>">首页 &gt;</a><a href=""><?php echo catpos($catid);?>列表</a></span>
            </div>
            <div id="list">
                <div class="list_li">
                    <div class="xi">
                        <p>动态</p>
                    </div>
                    <div class="shuang">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=83e86dbe8e634be99f241427bdc4f45f&action=lists&catid=%24catid&num=20&order=id+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 20;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                        <ul>
                        <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                            <li>
                                <a href="<?php echo $r['url'];?>"><span class='hong'><?php echo $r['title'];?></span><span class='mei'><?php echo date('m-d',$r['inputtime']);?></span></a>
                            </li>
                        <?php $n++;}unset($n); ?>
                        </ul>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </div>
                    <div class="ye"><?php echo $pages;?></div>
                </div>
            </div>
        </div>
<?php include template("content","footer"); ?>