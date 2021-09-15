//引入数据库
const pool = require('../pool.js');
//引入第三方模块，创建路由
const express = require('express');
const r = express.Router();
//console.log('商品路由创建成功');

//添加商品路由（post /product）
//http://127.0.0.1:8080/v1/product/add
r.post('/add',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	//判断输入框是否为空
	// if(!obj.lname){
	// 	res.send({code:400,msg:'请输入商品名称'});
	// 	return;
	// }
	// if(!obj.size){
	// 	res.send({code:401,msg:'请输入商品尺寸'});
	// 	return;
	// }
	// if(!obj.price){
	// 	res.send({code:402,msg:'请输入商品价格'});
	// 	return;
	// }
	pool.query('insert into omj_laptop set ?',[obj],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.affectedRows === 1){
			res.send({code:200,msg:'商品添加成功'});
			return;
		}else{
			res.send({code:200,msg:'商品添加失败'});
			return;
		}
	});
});

//删除商品路由(delete /delete/:编号)
//http://127.0.0.1:8080/v1/product/delete/8
r.delete('/delete/:lid',(req,res,next)=>{
	let obj = req.params;
	console.log(obj);
	pool.query('delete from omj_laptop where lid=?',[obj.lid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.affectedRows === 1){
			res.send({code:200,msg:"删除成功"});
		}else{
			res.send({code:201,msg:"未查询到该商品"});
		}
	});
});

//商品信息修改(put /put)
//http://127.0.0.1:8080/v1/product/put/6
r.put('/put',(req,res,next)=>{
	let obj = req.body;
	console.log(obj);
	if(!obj.price){
		res.send('价格不能为空');
		return;
	}
	pool.query('update omj_laptop set ? where lid=?',[obj,obj.lid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.affectedRows === 1){
			res.send({code:200,msg:"修改成功"});
		}else{
			res.send({code:201,msg:"修改失败，请检查编号值"});
		}
	});
});

//商品查询（get /:lid）
r.get('/:lid',(req,res,next)=>{
	let obj = req.params;
	console.log(obj);
	pool.query('select * from omj_laptop where lid=?',[obj.lid],(err,result)=>{
		if(err){
			next(err);
			return;
		}
		console.log(result);
		if(result.length > 0){
			res.send({code:200,msg:'查询成功',data:result});
		}else{
			res.send({code:201,msg:'未查询到'});
		}
	});
});

// r.post('/',(req,res,next)=>{
// 	let obj = req.body;
// 	console.log(obj);
// 	pool.query('select * from omj_laptop where tag like "%"?"%"',[obj.tag],(err,result)=>{
// 		if(err){
// 			next(err);
// 			return;
// 		}
// 		console.log(result);
// 		if(result.length > 0){
// 			res.send({code:200,msg:'查询成功',data:result});
// 		}else{
// 			res.send({code:201,msg:'未查询到'});
// 		}
// 	});
// });



module.exports = r;