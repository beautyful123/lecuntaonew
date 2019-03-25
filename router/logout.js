const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get("/",(req,res)=>{
    req.session.phone="";
    res.send({code:1,msg:'退出成功'});
})
module.exports=router;//导出路由器