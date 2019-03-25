const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get("/",(req,res)=>{
    var verify=req.session.phone;
    if(!verify){
        res.send({code:-1,msg:'请登录'})
    }else{
        res.send({code:1,msg:verify});
    }
})
module.exports=router;//导出路由器