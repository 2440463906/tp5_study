<?php
namespace app\index\controller;
//引入数据库类
	use think\Db;
//引入控制器类
	use think\Controller;
class other extends Controller
{
    public function  _initialize(){   //控制器继承系统控制器
        //验证是否登录
        if(!session('?name')){
            $this->redirect('login/login');
        }
    }
	// 签到
	public function rollcall()
    {
    	$data = input('post.');
    	$user = db('user')->where('username',session('name'))->find();

    	Db::table('class')->where('uid', $user['id'])->where('cname', $data['cname'])->update($data);

    	$this->success("签到成功",url('index/changeclass'));

    }
    // 清空签到
    public function delcall()
    {
        $cname = input('get.cname');
        Db::table('class')->where('cname',$cname)->update(['latitude'=>'0','longitude'=>'0']);
        $this->success("清空成功",url('index/changeclass'));
    }
    //web聊天室
    public function webchat()
    {
    	$this -> assign('cname',input('param.cname'));
    	echo $this->view->fetch();
    	
    }
    public function world()
    {
    	$webchat = Db::table('webchat')->where('cname',input('param.cname'))->select();
    	$this -> assign('webchat',$webchat);
    	echo $this->view->fetch();
    	
    }
    //发言
    public function addchat()
    {
        $data=input('post.');
        $data['time'] = time();
        $data['user'] = session('name');
        Db::table('webchat')->insert($data);
        $this->redirect('other/webchat',['cname'=>$data['cname']]);
    }
    //查找用户信息
    public function seleinfo()
    {
        $uid = Db::table('user')->where('nickname',input('nickname'))->value('id');
        $this->redirect("Index/index",array("uid"=>$uid));
    }
}