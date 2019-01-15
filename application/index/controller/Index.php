<?php
namespace app\index\controller;
//引入数据库类
	use think\Db;
//引入控制器类
	use think\Controller;
class index extends Controller
{
	public function  _initialize(){   //控制器继承系统控制器
		//验证是否登录
		if(!session('?name')){
			$this->redirect('login/login');
		}

		//头部
    	$user = db('user')->where('username',session('name'))->find();
    	$this -> assign('user',$user);


    	//信息  判断跳转的页面是否为自己的主页
    	if(input('uid')==null||input('uid')==$user['id']){
    		$uid = $user['id'];
    		$use = db('user')->where('id',$uid)->find();
            // 等级
            $use['expe'] = floor($use['experience']/100);
            $use['experi'] = $use['expe']*100+100;

    		//班级信息
    		$use['clas'] = db('class')->where('uid',$uid)->select();

    		$this -> assign('use',$use);
    	}else{
    		$uid = input('uid');
    		$use = db('user')->where('id',$uid)->find();
             // 等级
            $use['expe'] = floor($use['experience']/100);
            $use['experi'] = $use['expe']*100+100;

    		//班级信息
    		$use['clas'] = db('class')->where('uid',$uid)->select();

    		$this -> assign('use',$use);
    	}

        //是否关注
        $attention = db('attention')->where('mid','=',$user['id'])->where('uid','=',$use['id'])->find();
        $this -> assign('attention',$attention);





    }
    //首页
    public function index()
    {
        //头部
        $user = db('user')->where('username',session('name'))->find();


        //信息
        if(input('uid')==null||input('uid')==$user['id']){
            $uid = $user['id'];
            $article = db('article')->where('uid',$uid)->where('top',9)->find();
            $this -> assign('article',$article);
        }else{
            $uid = input('uid');
            $article = db('article')->where('uid',$uid)->where('top',9)->find();
            $this -> assign('article',$article);
        }


        //显示评论
        $comment =  db('comment')->alias('a')->join('user b', 'a.uid = b.id')->where('aid', $article['id'])->order('id','desc')->field('a.*,b.nickname,b.face,b.rank')->select();
        
        $this -> assign('comment',$comment);

    	echo $this->view->fetch();
    }

    //班级信息
    public function changeclass()
    {
    	$user = db('user')->where('username',session('name'))->find();
    	$class = db('class')->where('uid',$user['id'])->select();

    	foreach ($class as $key => $value) {
    		$class["$key"]['name'] = db('class')->alias('a')->join('user b', 'a.uid = b.id')->where('cname',$value['cname'])->field('a.longitude,a.latitude,b.*')->select();
    		
    	}
        $cla = Db::table('class')->group('cname')->select();
        

        $this -> assign('cla',$cla);
    	

    	
    	$this -> assign('class',$class);
    	echo $this->view->fetch();
    }
    //添加班级
    public function addclass()
    {
    	$user = db('user')->where('username',session('name'))->find();

    	$data = input('param.');
    	$data['uid'] = $user['id'];
        //查看班级是否已添加
        if(!Db::table('class')->where('cname',$data['cname'])->where('uid',$user['id'])->find()== null){
                         $this->error('班级已添加');
                      }

    	if($data['cname']==""||$data['introd']==""){
    		$this->error('内容不能为空');
    	}
    	if(Db::table('class')->insert($data)){
    		$this->success('发表成功',url('index/changeclass'),'',1);
    	}else{
			$this->error('发表失败');
    	}
    	

    }

    //删除班级
    public function delclass()
    {
    	$data = input('param.');
        
        
        if(Db::table('class')->where($data)->delete()){
            $this->success('删除成功',url('index/changeclass'),'',1);
        }else{
            $this->error('删除失败');
        }
    }


    //发表博客
    public function addblog()
    {
    	$data = input('post.');
    	if($data['content']==""){
    		$this->error('内容不能为空');
    	}
    	$data['create_time'] = time();
    	if(Db::table('article')->insert($data)){
            Db::table('user')->where('id', $data['uid'])->setInc('experience',10);
    		$this->success('发表成功',url('index/index'),'',1);
    	}else{
			$this->error('发表失败');
    	}
    	
    }

    //接口发表文章
    public function keyaddblog()
    {
        $data = input('post.');
        $secretkey = input('get.secretkey');
        $user = Db::table('user')->where('secretkey',$secretkey)->find();
        $data['secretkey'] = $user['id'];

        $data['create_time'] = time();
        if(Db::table('article')->insert($data)){
            Db::table('user')->where('id', $data['uid'])->setInc('experience',10);
            $this->success('发表成功',url('index/index'),'',1);
        }else{
            $this->error('发表失败');
        }
        
    }
    //发布评论
    public function comment()
    {
        $data = input('post.');
        if(Db::table('comment')->insert($data)){
            $this->success('发表成功');
        }else{
            $this->error('发表失败');
        }
    }
    //博客列表
    public function bloglist()
    {
        
        //  判断跳转的页面是否为自己的博客页
        if(input('uid')!==null){
            //我的博客
            $article = Db::table('article')->alias('a')->join('user b', 'a.uid = b.id')->where('uid',input('uid'))->where('top',0)->order('id','desc')->field('a.*,b.nickname,b.face,b.rank')->select();
        }else if(input('comment')!==null)
        {
            //评论博客
             $article = Db::table('article')->alias('a')->join('comment b', 'a.id = b.aid')->join('user c', 'a.uid = c.id')->where('b.uid',input('comment'))->where('top',0)->group('aid')->order('id','desc')->field('a.*,c.nickname,c.face,c.rank')->select();
        }else{
            //最新博客
            $article = Db::table('article')->alias('a')->join('user b', 'a.uid = b.id')->where('top',0)->order('id','desc')->field('a.*,b.nickname,b.face,b.rank')->select();
        }
        $this -> assign('article',$article);

        echo $this->view->fetch();
        
    }
    //博客页面
    public function showblog()
    {
        $article = Db::table('article')->where('id',input('id'))->find();
        $article['nickname'] = Db::table('user')->where('id',$article['uid'])->field('user.nickname')->find();
        //dump($article['nickname']);
        $this -> assign('article',$article);

        //显示评论
        $comment =  db('comment')->alias('a')->join('user b', 'a.uid = b.id')->where('aid', input('id'))->order('id','desc')->field('a.*,b.nickname,b.face,b.rank')->select();
        
        $this -> assign('comment',$comment);
        //增加热度
        Db::table('article')->where('id', input('id'))->setInc('hot');

        echo $this->view->fetch();
    }

    //教学资源下载
    public function studyresource()
    {

        $dir = './studyresource';
        //$dir=iconv("utf-8","gb2312",$dir);
            $files = array();
            if(@$handle = opendir($dir)) { //注意这里要加一个@，不然会有warning错误提示：）
                while(($file = readdir($handle)) !== false) {
                    if($file != ".." && $file != ".") { //排除根目录；
                        //@$file=iconv("gb2312","utf-8",$file); 
                            $files[] = $file;
                                }
                    }
                $this -> assign('files',$files);
                echo $this->view->fetch();
                //dump($files);
                }
            
            
        //echo $this->view->fetch();
    }
    //教学资源上传
    public function uploads()
    {
        
         // 获取表单上传文件 例如上传了001.jpg
        if(!$file = request()->file('zip')){
            $this->error("上传文件为空");
        }
        $info = $file->move( ROOT_PATH . 'public' . DS . 'studyresource','');
        if($info){
            $this->success("上传成功");
        }else{
            // 上传失败获取错误信息
           $this->error("上传格式错误，请压缩文件");
        }


    }

    //作业
    public function work()
    {
        $user = db('user')->where('username',session('name'))->find();
        $class = db('class')->where('uid',$user['id'])->select();
        
        foreach ($class as $key => $value) {
            $class["$key"]['title'] = db('twork')->where('cname',$value['cname'])->select();
            
                foreach ($class["$key"]['title'] as $ke => $value) {
                      if(Db::table('swork')->where('wid',$value['id'])->where('uid',$user['id'])->find()== null){
                         $class["$key"]['title']["$ke"]['state'] = 0;
                      }else{
                          $class["$key"]['title']["$ke"]['state'] = 1;
                      }
                    
                }
            //dump($class["$key"]['title']);
        }
        

        $this -> assign('class',$class);
        echo $this->view->fetch();

    }
    //添加作业
    public function addwork()
    {
        $data = input('post.');
        //insertGetId增加数据的同时返回自增主键的id
        if($twork = Db::table('twork')->insertGetId($data)){
            //创建文件夹
            $dir = "./work/$twork";
            mkdir ($dir,0777,true);
               
            $this->success("发表成功");
        }else{
            $this->error("请检查表单");
        }
        
    }

    //写作业
    public function writework()
    {
        $data = input('post.');        
        
        if(input('post.wid') == null){
            $this->error("作业全部完成,不用再提交");
        }

        $uid = $data['uid'];
        if(!Db::table('swork')->where('wid',$wid)->where('uid',$uid)->find()){
            Db::table('swork')->insert($data);
        }
        
        
         // 获取表单上传文件 例如上传了001.jpg
        if(!$file = request()->file('zip')){
            $this->error("上传文件为空");
        }
        $info = $file->move( ROOT_PATH . 'public' . DS . "work/$wid/$uid",'');
        if($info){
            $this->success("上传成功");
        }else{
            // 上传失败获取错误信息
           $this->error("上传格式错误，请压缩文件");
        }



    }

    //批改作业
    public function showwork()
    {
        $swork = Db::table('swork')->where('wid',input('wid'))->select();
        

        

        foreach ($swork as $key => $value) {
            $swork["$key"]['user'] = Db::table('user')->where('id',$value['uid'])->find();
            $wid = $value['wid'];
            $uid = $value['uid'];
            $dir = "./work/$wid/$uid";
                $swork["$key"]['files'] = array();
                if(@$handle = opendir($dir)) { //注意这里要加一个@，不然会有warning错误提示：）
                    while(($file = readdir($handle)) !== false) {
                        if($file != ".." && $file != ".") { //排除根目录；
                                $swork["$key"]['files'] = $file;

                                    }
                        }
                    }

        }
//dump($swork);
        $this -> assign('swork',$swork);
        echo $this->view->fetch();
    }

    //评论作业
    public function addswork()
    {
        Db::name('swork')->update(input('post.'));
        $this->success('评论成功');
    }
    //信息页
    public function info()
    {
         echo $this->view->fetch();
    }
    //修改信息
    public function infoform()
    {
        $data=input('post.');
        Db::table('user')->where('username',session('name'))->update($data);
        $this->success("恭喜您！修改成功",url('index/info'));
    }
    //修改头像
    public function face()
    {

        
        $user = db('user')->where('username',session('name'))->find();
        $use = $user['id'];
        $base64_body = substr(strstr ($_POST['suggest'],','),1);    //去除头部
        $img = base64_decode($base64_body);                         //转码   
        $face = $use.time().'.png'; 
        file_put_contents("static/index/face/".$face, $img);                          //创建剪裁后图片

        $fa = db('user')->where('username',session('name'))->value('face');
        if($fa != null){                                //判断是否创建头像
          unlink("static/index/face/".$fa);             //删除原头像
        }
        
        Db::table('user')->where('username',session('name'))->update(['face' =>$face]);
        //$this->success("恭喜您！修改成功",url('index/info'));
    }
    //修改密码
    public function pswd()
    {
        $oldps = md5(input('post.oldps'));
        $newps = md5(input('post.newps'));
        $password = db('user')->where('username',session('name'))->value('password');
        if($oldps==$password){
            Db::table('user')->where('username',session('name'))->update(['password' =>$newps]);
            $this->success("恭喜您！修改成功",url('index/info'));
        }else{
            $this->error("密码错误");
        }
    }

    //添加关注
    public function addattention()
    {
        $data = ['mid'=>input('mid'), 'uid'=>input('uid')];
        Db::table('attention')->insert($data);
        $this->redirect('index/index',array('uid'=>input('uid')));
    }
    //取消关注
    public function delattention()
    {
        Db::table('attention')->where('mid','=',input('mid'))->where('uid','=',input('uid'))->delete();
        $this->redirect('index/index',array('uid'=>input('uid')));
    }

    //关注粉丝列表
    public function attention()
    {
        if(input('uiid')!==null){
            $attention = Db::table('attention')->alias('a')->join('user b', 'a.mid = b.id')->where('uid',input('uiid'))->order('id','desc')->field('a.*,b.nickname,b.face,b.rank,b.sex,b.autograph')->select();
            foreach ($attention as $key => $value) {
                $attention["$key"]['uid'] = $value['mid'];
            }
        }
        if(input('miid')!==null){
            $attention = Db::table('attention')->alias('a')->join('user b', 'a.uid = b.id')->where('mid',input('miid'))->order('id','desc')->field('a.*,b.nickname,b.face,b.rank,b.sex,b.autograph')->select();
            
        }
        $this -> assign('attention',$attention);
        echo $this->view->fetch();
    }
        
}
