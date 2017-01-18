<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--content开始 -->
        
        <div id="content">
            <div class="list_top">
                <img src="<?php echo IMG_PATH;?>home.png" alt="" />
                <span><a href="<?php echo APP_PATH;?>">首页 &gt;</a><a href=""><?php echo catpos($catid);?>列表</a></span>
            </div>
            <div class="list_bottom">
                <div style="margin-top:0" class="waiji">
                    <img src="<?php echo $CATEGORYS['39']['image'];?>" alt="" />
                    <span class="wai_background">外教专家</span>
                    <span class="wai_tu"></span>
                    <div style="border-top:none;border-left:none;" class="common">
                        <a title="外教风采" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=43"><span>外教风采</span></a>
                    </div>
                    <div style="border-top:none;border-right:none;" class="common">
                        <a title="规章制度" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=44"><span>规章制度</span></a>
                    </div>
                    <div style="border-top:none;border-left:none;" class="common">
                        <a title="荣誉奖励" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=45"><span>荣誉奖励</span></a>
                    </div>
                    <div style="border-top:none;border-right:none;" class="common">
                        <a title="招聘信息" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=46"><span>招聘信息</span></a>
                    </div>
                </div>
                <div class="waiji" >
                    <img src="<?php echo $CATEGORYS['40']['image'];?>" alt="" />
                    <span class="wai_background2">聘用程序</span>
                    <span class="wai_tu2"></span>
                    <div style="border-top:none;border-left:none;" class="common">
                        <a title="外教风采" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=47"><span>长期外教专家聘用流程</span></a>
                    </div>
                    <div style="border-top:none;border-right:none;" class="common">
                        <a title="长期外籍专家聘用流程" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=48"><span>证件办理</span></a>
                    </div>
                    <div style="border-top:none;border-left:none;" class="common">
                        <a title="短期外籍专家聘用流程" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=49"><span>短期外教专家聘用流程</span></a>
                    </div>
                    <div style="border-top:none;border-right:none;" class="common">
                        <a title="入职&离职" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=50"><span>入职&离职</span></a>
                    </div>
                </div>
                <div class="waiji" >
                    <img src="<?php echo $CATEGORYS['41']['image'];?>" alt="" />
                    <span class="wai_background">服务指南</span>
                    <span class="wai_tu"></span>
                    <div style="border-top:none;border-left:none;" class="common2">
                        <a title="来华前" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=51"><span>来华前</span></a>
                    </div>
                    <div style="border-top:none;border-right:none;" class="common2">
                        <a title="来校后" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=52"><span>来校后</span></a>
                    </div>
                    <div class="common3">
                        <a title="外教指南" href="<?php echo APP_PATH;?>index.php?m=content&c=index&a=lists&catid=53"><span>外教指南</span></a>
                    </div>
                </div>
                <div class="waiji">
                    <img src="<?php echo $CATEGORYS['42']['image'];?>" alt="" />
                    <span class="wai_background2">外教活动</span>
                    <span class="wai_tu2"></span>
                    <div class="wai_size">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=75a5d37ef8e1af50213fa5e2215954fe&action=category&catid=42&num=6&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'42','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'6',));}?>
                        <div class="font">
                        	<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                            <div class="qu">
                                <a title="<?php echo $r['catname'];?>" href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a>
                            </div> 
                            <?php $n++;}unset($n); ?>
                        </div>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </div>
                </div>

                <!--some special to sideBar-->
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=58c700314db24da8ef3f19a6e5e753b5&action=category&catid=%24top_parentid&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$top_parentid,'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
				<div class="list_left">
				    <ul>
				    <?php $i = 0?>
				    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				        <li><a class="list_left_a" href="#"><span class="lo"><?php echo $r['catname'];?></span></a></li>
				    <?php $n++;}unset($n); ?>
				    </ul>
				</div>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


                <!--for the box-shadow-->
                <script>
                    $(function(){

                        outReadBar();

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

                            //跳到那个节点
                            var dom = $(".waiji").eq(index);
                            $.scrollTo(dom,300);

                            $(".list_left_a").eq(index).addClass("sideBar_a_acitve");
                        })
                    });
                </script>
            </div>
        </div>
<?php include template("content","footer"); ?>