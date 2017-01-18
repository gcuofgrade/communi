<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=20610d1974a931dac9e75b2263171842&action=category&catid=%24parentid&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$parentid,'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
<div class="list_left">
    <ul>
    	<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
        <li><a class="list_left_a" href="<?php echo $r['url'];?>"><span class="lo"><?php echo $r['catname'];?></span></a></li>
        <?php $n++;}unset($n); ?>
    </ul>
</div>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>