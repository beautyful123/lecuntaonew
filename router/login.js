const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.post("/",(req,res)=>{
    var $phone=req.body.phone;
    var $upwd=req.body.upwd;
    var sql="SELECT * from login WHERE phone=? AND upwd=?"
    pool.query(sql,[$phone,$upwd],(err,result)=>{
        if(err)throw err;
        // console.log(result)
        if(result.length>0){
            req.session.phone=$phone;
            res.send({code:1,msg:"使用手机号登录成功"})
        }else{
            var sql_next="SELECT * from login WHERE uname=? AND upwd=?"
            pool.query(sql_next,[$phone,$upwd],(err,result)=>{
                if(err) throw err;
                if(result.length>0){
                    // 存express-session
                    req.session.phone=$phone;
                    res.send({code:1,msg:"使用用户名登录成功"})
                }else{
                    res.send({code:-1,msg:"用户名密码不匹配"})
                }
            })
        }
    })
})
module.exports=router;//导出路由器；
