const mysql=require("mysql");
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"letaocun",
  port:3306,
  connectionLimit:20//最大连接数
})

module.exports=pool;