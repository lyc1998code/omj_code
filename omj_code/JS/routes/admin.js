//引入数据库池
const pool = require('../pool.js');
//创建管理员路由
const express = require('express');
const r = express.Router();
// console.log('管理员路由创建成功');

//管理员登录
r.post("/login",(req,res,next)=>{
  let obj = req.body;
  console.log(obj);
  console.log('前台请求');
  pool.query("select * from omj_admin where aname=? && apwd=?",[obj.aname,obj.apwd],(err,result)=>{
    if(err){
      next(err);
      return;
    }
    console.log(result);
    if(result.length){
      res.send({code:1,msg:'登陆成功'});
    }else{
      res.send({code:0,msg:'登陆失败'});
    }
  });
});

//查看所有用户
r.get("/user_list",(req,res,next)=>{
  let obj = req.query;
  //console.log(obj);
  console.log("前台请求");
  pool.query("select * from omj_user",(err,result)=>{
    if(err){
      next(err);
      return;
    }
    //console.log(result);
    if(result){
      res.send({code:1,msg:'查询成功',data:result});
    }
  });
});

//删除用户
r.delete("/del",(req,res,next)=>{
  let obj = req.body;
  console.log(obj);
  pool.query("delete from omj_user where uid=?",[obj.uid],(err,result)=>{
    if(err){
      next(err);
      return;
    }
    console.log(result);
    if(result.affectedRows){
      res.send({code:1,msg:"删除成功"});
    }
  });
});

//所有用户购物车查询
//http://127.0.0.1:8080/v1/admin/shopp
r.post('/shopp',(req,res,next)=>{
	// let obj = req.body;
	// console.log(obj);
	pool.query("select s.sid,l.lid,l.pic,l.xl,l.bksize,l.color,l.price,u.uid from  omj_shopp s,omj_laptop l,omj_user u where s.laptopid=l.lid && s.userid=u.uid",(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length){
			res.send({code:1,msg:`成功查询到${result.length}条数据`,data:result});
		}else{
			res.send({code:0,msg:'未查询到数据'});
		}
	});
});


module.exports = r;