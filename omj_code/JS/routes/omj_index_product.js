//引入数据库池
const pool = require('../pool');
//创建首页商品路由
//引入第三方模块
const express = require('express');
//创建路由器
const r = express.Router();
//console.log('首页商品路由创建成功');

//添加首页商品(post /index.add)
//http://127.0.0.1:8080/v1/indexproduct/add
r.post('/add',(req,res,next)=>{
  let obj = req.body;
  console.log(obj);
  pool.query('insert into omj_index_product set ?',[obj],(err,result)=>{
    if(err){
      next(err);
      return;
    }
    console.log(result);
    if(result.affectedRows){
      res.send({code:200,msg:'添加成功'});
    }
    
  });
  
});

module.exports = r;