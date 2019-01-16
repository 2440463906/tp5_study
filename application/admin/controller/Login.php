<?php
namespace app\admin\controller;
//引入数据库类
	use think\Db;
//引入控制器类
	use think\Controller;
class login extends Controller
{
    
	public function login()
    {
        echo $this->view->fetch();
    }
    //验证登录
    public function selogin()
    {
    	$nu = Db::table('admin_user')->where(input('post.'))->find();
    	if($nu == null){ 
           $this->error ('用户名或密码错误');
        }else{
            session('adminname', input('post.adminname'));
            $this->success("恭喜您！登录成功",url('index/index'));
        }
    }

     //退出
    public function secede()
    {
        session(null);
        $this->redirect('login/login');
    }
}