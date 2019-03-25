const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get('/',(req,res)=>{
    var $gid=req.query.gid;
    var $lid=req.query.lid
    $lid = parseInt($lid)
    // console.log($lid);
    if($lid>6){
        $lid=6
    }
    var sql="SELECT * FROM goodsdetails WHERE gid=? AND lid=? ";
    pool.query(sql,[$gid,$lid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
// 按销量降序排序
router.get('/sell',(req,res)=>{
    var $gid=req.query.gid;
    var $lid=req.query.lid;
    if($lid>6){
        $lid=6;
    }
    var sql="SELECT * FROM goodsdetails WHERE gid=? AND lid=? ORDER BY sell DESC";
    pool.query(sql,[$gid,$lid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
// 按价格排序
router.get('/priceasc',(req,res)=>{
    var $gid=req.query.gid;
    var $lid=req.query.lid
    var sql="SELECT * FROM goodsdetails WHERE gid=? AND lid=? ORDER BY price ASC";
    pool.query(sql,[$gid,$lid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
// 按价格降序
router.get('/pricedesc',(req,res)=>{
    var $gid=req.query.gid;
    var $lid=req.query.lid
    var sql="SELECT * FROM goodsdetails WHERE gid=? AND lid=? ORDER BY price DESC";
    pool.query(sql,[$gid,$lid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
//按人气降序（id降序）排序
router.get('/renqi',(req,res)=>{
    var $gid=req.query.gid;
    var $lid=req.query.lid
    $lid=parseInt($lid)

    var sql="SELECT * FROM goodsdetails WHERE gid=? AND lid=? ORDER BY id DESC";
    pool.query(sql,[$gid,$lid],(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
})
module.exports=router;//导出路由器；
