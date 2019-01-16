<?php
namespace app\admin\controller;
//引入数据库类
	use think\Db;
//引入控制器类
	use think\Controller;
class index extends Controller
{
    public function  _initialize(){   //控制器继承系统控制器
        //验证是否登录
        if(!session('?adminname')){
            $this->redirect('login/login');
        }
    }

	public function index()
    {
        echo $this->view->fetch();
    }

    //用户管理
    public function user()
    {
        $user = Db::table('user')->select();
        $this -> assign('user',$user);
        echo $this->view->fetch();
    }
    //更改删除用户信息
    public function upuser()
    {

        if(input('did') !=null){
            Db::table('user')->where('id',input('did'))->delete();
            $this->redirect('index/user');
        }
        if(input('nickname') == "on"){
            $data['nickname'] = "违规昵称".time();
        }
        if(input('rank') == "教师"){
            $data['rank'] = 0;
        }else{
            $data['rank'] = 1;
        }
        $data['state'] = input('state');
        Db::table('user')->where('id',input('id'))->update($data);
        $this->redirect('index/user');
    }

    //公告管理
    public function announce()
    {
        $announce = Db::table('announce')->select();
        $this -> assign('announce',$announce);
        echo $this->view->fetch();
    }
    //删除公告
    public function delanno()
    {
        Db::table('announce')->where('id',input('id'))->delete();
        $this->redirect('index/announce');
    }
    public function addanno()
    {
        $data = input('post.');
        $data['adminname'] = session('adminname');
        Db::table('announce')->insert($data);
        $this->redirect('index/announce');
    }

    //博客管理
    public function blog()
    {
        $article = Db::table('article')->where('top',0)->select();
        $this -> assign('article',$article);
        echo $this->view->fetch();
    }
    //删除博客
    public function delblog()
    {
        Db::table('article')->where('id',input('id'))->delete();
        $this->redirect('index/blog');
    }


    //评论管理
    public function comment()
    {
        $comment = Db::table('comment')->select();
        $this -> assign('comment',$comment);
        echo $this->view->fetch();
    }

    //系统管理
    public function system()
    {
        // $this -> assign('attention',$attention);
        echo $this->view->fetch();
    }
    
}