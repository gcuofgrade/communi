<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--content开始 -->
<div id="content">
            <div class="list_top">
                <img src="<?php echo IMG_PATH;?>home.png" alt="" />
                <span><a href="<?php echo siteurl($siteid);?>">首页</a>>><a href=""><?php echo catpos($catid);?>内容</a></span>
            </div>
            <div id="neirong" style="margin-bottom:20px;">
                <div class="yi">
                    <div class="shang">
                        <p><?php echo $title;?></p>
                    </div>
                    <div class="cou"><?php echo $content;?></div>
                </div>
            </div>
        </div>
<?php include template("content","footer"); ?>