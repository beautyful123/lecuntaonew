const express=require("express");
const route1=require("./router/push");
const route2=require("./router/login");
const route3=require("./router/verify");
const route4=require("./router/load");
const route5=require("./router/goodsList");
const route6=require("./router/details");
const route7=require("./router/shopcar");
const route8=require("./router/logout");



const session=require("express-session");
var app=express();
// 监听3000端口
app.listen(3000);
// 托管静态目录
app.use(express.static("public"))
const bodyParser=require("body-parser");
app.use(bodyParser.urlencoded({extended:false}))//使用body-parser模块
//跨域访问配置
//1:加载模块cors
const cors = require("cors");
//2:配置cors
app.use(cors({
	origin:[
		"http://127.0.0.1:5500",
		"http://localhost:5050",
		"http://127.0.0.1:8080",
		"http://172.163.4.248:8080",
		"http://172.163.4.248:5050",
		"http://127.0.0.1:8081"                                

  ],//允许列表
  credentials:true   //是否验证
}))
//保存验证登陆状态
app.use(session({
	secret:"128位随机字符", //安全字符串
	resave:false, //每次请求是否更新数据
	saveUninitialized:true, //初始化时保存数据
	cookie:{
	maxAge:1000*60*60*8 //储存时间
	}
	}));

app.use("/push",route1);   //将路由器挂载到a下
app.use("/login",route2);//挂载登录路由
app.use("/verify",route3);
app.use("/load",route4);
app.use('/goodsList',route5);
app.use('/details',route6);
app.use('/shopcar',route7);
app.use('/logout',route8);


