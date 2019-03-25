const pool=require("../pool");
const express=require("express");
const router=express.Router();
//注册
router.post("/",(req,res)=>{
    var $phone=req.body.phone;
    var $upwd=req.body.upwd;
    var $uname="ltc_"+$phone;
    // 验证是否已经注册
    var pu=`SELECT * FROM login WHERE phone=?`
    pool.query(pu,[$phone],(err,resu)=>{
        if(err) throw err;
        // console.log(resu)
        if(resu.length!=0){
            res.send({code:-1,msg:"该手机号已注册，请登录"})
        }else{
            var sql=`INSERT INTO login(id,uname,phone,upwd,ctime) VALUES(null,?,?,?,now())`;
            pool.query(sql,[$uname,$phone,$upwd],(err,resu)=>{
                if(err)throw err;
                if(resu.affectedRows>0){
                    res.send({code:1,msg:"注册成功"})
                }
            })
        }
    })

  })
module.exports=router;//导出路由器；