//引入用户路由
const userRouter = require('./routes/user.js');
//引入商品路由
const productRouter = require('./routes/omj_laptop.js');
//引入首页banner
const banRouter = require('./routes/omj_index_banner.js');
//引入首页商品路由
const indexproductRouter = require('./routes/omj_index_product');
//引入管理员路由
const adminRouter = require('./routes/admin');

//创建web服务器
//引入第三方模块
const express = require('express');
const app = express();
app.listen(8080);

//托管
app.use(express.static('./views'));
//使用中间件body-parser将post请求的数据解析为对象
app.use(express.urlencoded({
	extended:false//内部如何解析为对象
}));
//路由挂载
app.use('/v1/user',userRouter);//用户列表
app.use('/v1/product',productRouter);//商品列表
app.use('/v1/banner',banRouter);//首页banner
app.use('/v1/indexproduct',indexproductRouter);//首页商品
app.use('/v1/admin',adminRouter);//管理员登录

//错误处理
app.use( (err,req,res,next)=>{
	//接收错误信息
	console.log(err);
	res.status(500).send({code:500,msg:'服务器端错误'});
} );

