const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get('/',(req,res)=>{
    var $floor=req.query.gid;
    // if($floor==undefined){
    //     $floor='电器/数码';
    // }
    var sql="SELECT * FROM goodslist where gid=?";
    pool.query(sql,[$floor],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
module.exports=router;//导出路由器；
