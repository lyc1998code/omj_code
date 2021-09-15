//引入数据库池
const pool = require('../pool.js');

//引入第三方模块，创建路由器
//用户表
const express = require('express');
const r = express.Router();

//console.log('这是用户列表');

//用户注册（post '/reg'）
//http://127.0.0.1:8080/v1/user/reg
r.post('/reg',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	//console.log('前台请求');
	//判断各项是否为空
	// if(!obj.uname){
	// 	res.send({code:400,msg:'用户名不能为空'});
	// 	return;
	// }
	// if(!obj.sex){
	// 	res.send({code:401,msg:'性别不能为空'});
	// 	return;
	// }
	// if(!obj.upwd){
	// 	res.send({code:402,msg:'密码不能为空'});
	// 	return;
	// }
	// if(!obj.phone){
	// 	res.send({code:403,msg:'手机号不能为空'});
	// 	return;
	// }
	pool.query('insert into omj_user set ?',[obj],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.affectedRows){
			res.send({code:1,msg:'注册成功'});
		}else{
			res.send({code:0,msg:'注册失败'});
		}
		
	});
});

//检测用户名是否被占用(get '/:uname')
//http://127.0.0.1:8080/v1/user/checkUname/tao
r.get('/checkUname/:uname',(req,res,next)=>{
	let obj = req.params;
	console.log(obj);
	pool.query('select * from omj_user where uname=?',[obj.uname],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length === 0){
			res.send({code:200,msg:"该用户名可以使用"});
		}else{
			res.send({code:201,msg:"该用户名被占用"});
		}
	});
});

//检测手机是否被占用，格式是否正确
//http://127.0.0.1:8080/v1/user/checkPhone/ 15565651235
r.get('/checkPhone/:phone',(req,res,next)=>{
	let obj = req.params;
	console.log(obj);
	pool.query('select * from omj_user where phone=?',[req.params.phone],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);//结果是数组
		if(result.length === 0){
			if(/^1[3-9]\d{9}$/.test(req.params.phone)){
				res.send({code:200,msg:"该手机号可以使用"});
			}else{
				res.send({code:200,msg:"该手机号格式不正确"});
			}
		}else{
			res.send({code:201,msg:"该手机号被占用"});
		}
		
	});
});

//用户登录（post '/login'）
//http://127.0.0.1:8080/v1/user/login
r.post('/login',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	console.log('前台请求');
	// if(!obj.uname){
	// 	res.send({code:400,msg:'用户名不能为空'});
	// 	return;
	// }
	// if(!obj.upwd){
	// 	res.send({code:401,msg:'密码不能为空'});
	// 	return;
	// }
	pool.query('select * from omj_user where phone=? and upwd=?',[obj.phone,obj.upwd],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length == 1){
			res.send({code:200,msg:'登陆成功'});
		}else{
			res.send({code:201,msg:'账号或密码错误'});
		}
	});
});

//用户信息查询、修改
//http://127.0.0.1:8080/v1/user/put
r.put("/put",(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	pool.query("select * from omj_user where uid=?",[obj.uid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length){
			res.send({code:1,msg:"查到一条数据",data:result});
		}else{
			res.send({code:0,msg:"未知错误"});
		}
	});
	
});

// 用户查看所有商品
//http://127.0.0.1:8080/v1/user/all-shopp
r.get("/all-shopp",(req,res,next)=>{
	pool.query("select lid,zxl,bksize,price,pic from omj_laptop",(err,result)=>{
		if(err){
			next(err);
			return;
		}
		// console.log(result);
		if(result.length){
			res.send({code:1,msg:"成功",data:result});
		}else{
			res.send({code:0,msg:"错误"});
		}
	});
});


//用户购物车查询
//http://127.0.0.1:8080/v1/user/shopp
r.post('/shopp',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	pool.query("select s.sid,l.lid,l.pic,l.xl,l.bksize,l.color,l.price,u.uid from  omj_shopp s,omj_laptop l,omj_user u where s.laptopid=l.lid && s.userid=u.uid && uid=?",[obj.uid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length){
			res.send({code:1,msg:'查询成功',data:result});
		}else{
			res.send({code:0,msg:'未查询到数据'});
		}
	});
});

module.exports = r;