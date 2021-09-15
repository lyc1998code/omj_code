//引入数据库池
const pool = require('../pool.js');
//创建banner路由
const express = require('express');
const r = express.Router();
//console.log('banner路由创建成功');

//添加图片（post /addPri）
//http://127.0.0.1:8080/v1/banner/addPri
r.post('/addPri',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	//验证属性值是否为空
	if(!obj.img){
		res.send({code:400,msg:'请输入图片路径'});
		return;
	}
	if(!obj.title){
		res.send({code:401,msg:'请输入图片标签值'});
		return;
	}
	pool.query('insert into omj_index_banner set ?',[obj],(err,result)=>{
		if(err){
			next(err);
			retunr;
		}
		console.log(result);
		if(result.affectedRows){
			res.send({code:200,msg:'添加成功'});
		}
	});
});

//删除banner（delete /delete/:bid）
//http://127.0.0.1:8080/v1/banner/delete/:bid
r.delete('/delete/:bid',(req,res,next)=>{
	let obj = req.params;
	console.log(obj);
	pool.query('delete from omj_index_banner where bid=?',[obj.bid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.affectedRows){
			res.send({code:200,msg:'删除成功'});
		}else{
			res.send({code:201,msg:'删除失败'});
		}
	});
});

module.exports = r;