<?php
namespace app\index\controller;
//引入数据库类
	use think\Db;
//引入控制器类
	use think\Controller;
//引入验证器类
    use think\Validate;
class Login extends Controller
{
	//登录
    public function login()
    {
        echo $this->view->fetch();
    }
    //登录验证
    public function verlogin()
    {
       
         $validate = new Validate(
        [   //验证规则
            'username|用户名'  => 'require',
            'password|密码'  => 'require',
            'captcha|验证码'=>'require|captcha' 
        ]
        // [   //错误信息
            
        // ]
        );
        //接收数据
        $data=input('post.');

        if (!$validate->check($data)) {
            $this->error ($validate->getError());
        };

    	$da['username'] = input('post.username');
        $da['password'] = md5(input('post.password'));
        $nu = Db::table('user')->where($da)->find();
    	if($nu == null){ 
           $this->error ('用户名或密码错误');
        }else{
            if($nu['state'] == 1){
                $str = "您已经被封号，请联系管理员解封！";
                $this->error($str,url('index/index'));
            }else{
            session('name', input('post.username'));
            $this->success("恭喜您！登录成功",url('index/index'));
        }
        }

    }

    


    //注册
    public function enroll()
    {
    	echo $this->view->fetch();
    }
    //注册验证
    public function verenroll()
    {

        //return input('post.');
        //实例化验证器并设置验证规则和错误信息
        $validate = new Validate(
        [   //验证规则
            'username|用户名'  => 'require|max:10',
            'email'=>'require|email',   
        ]
        // [   //错误信息
            
        // ]
        );
        //接收数据
        $data=input('post.');
        $data['password'] = md5($data['password']);
        $data['create_time'] = time();
        //私钥
        $data['secretkey'] = md5($data['username']);
        //返回错误信息
        if (!$validate->check($data)) {
            $this->error ($validate->getError());
        }else{
            Db::table('user')->insert($data);
            $uid = Db::table('user')->where('username',$data['username'])->find();
            
            $article = [
                'title' => '讨论帖',
                'desc' => '　　欢迎各位同学前来一起讨论学习。',
                'content' => '　　欢迎各位同学前来一起讨论学习。',
                'top' => 9,
                "create_time" => time(),
                'uid' => $uid['id'],
            ];
            Db::table ('article')->insert($article);
             $this->success("恭喜您！注册成功",url('login/login'));

        }
    }
    //注册验证用户名
    public function vername()
    {
        //return input('post.');
        $username = input('post.');
        $nu = Db::table('user')->where($username)->find();
        if($nu == null){    
            echo 0;     //用户名不存在
        }else{
            echo 1;
        }
    }

    //退出
    public function secede()
    {
        session(null);
        $this->redirect('login/login');
    }

   
}