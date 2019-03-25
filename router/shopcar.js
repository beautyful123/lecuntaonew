const express=require("express");
const pool=require("../pool");
const router=express.Router();
// 购物车添加数据
router.get('/',(req,res)=>{
     var $uname=req.session.phone;
     if(!$uname){
         res.send({code:-1,msg:'请登录'})
     }
    var $gid = req.query.gid;
    var $lid  =parseInt(req.query.lid);
    var $did = parseInt(req.query.did);
    var $title = req.query.title;
    var $img_url = req.query.img_url;
    var $price = parseInt(req.query.price);
    var $uname = req.query.uname;
    var $count = 1;

    var sql = `SELECT id FROM shopcar WHERE gid='${$gid}' AND lid=${$lid} AND did=${$did}`
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length==0){//无记录，插入
            sql1=`INSERT INTO shopcar (id,gid,lid,did,title,img_url,price,uname,count) VALUES (null,'${$gid}',${$lid},${$did},'${$title}','${$img_url}',${$price},'${$uname}',${$count})`;
        }else{
            sql1= ` UPDATE shopcar SET count=count+1 WHERE gid='${$gid}' AND lid=${$lid} AND did = ${$did}`
        }
        pool.query(sql1,(err,result)=>{
            if(err) throw err;
            if(result.affectedRows > 0){
                res.send({code:1,msg:"添加成功"});
              }else{
                res.send({code:-1,msg:"添加失败"});
              }
        })
    })
})
// 购物车获取数据
router.get("/getData",(req,res)=>{
    var $uname = req.query.uname;
    var sql = "SELECT * FROM shopcar WHERE uname = ? ORDER BY id DESC";   
    pool.query(sql,[$uname],(err,resu)=>{
        if(err) throw err;
        res.send({code:1,data:resu})
    })
})

//点击按钮增加减少
router.get("/changecount",(req,res)=>{
    let $gid = req.query.gid;
    let $lid = req.query.lid;
    let $did = req.query.did;
    let $count = parseInt(req.query.count);
    let sql="UPDATE shopcar SET count =count+ ? WHERE gid= ? AND lid= ? AND did = ?"
    pool.query(sql,[$count,$gid,$lid,$did],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            let sql="SELECT count FROM shopcar WHERE gid= ? AND lid= ? AND did = ?"
            pool.query(sql,[$gid,$lid,$did],(err,resu)=>{
                if(err) throw err;
                res.send({code:1,data:resu})
            })
        }
    })
})

router.get("/delete",(req,res)=>{
        var $id=req.query.id;
        var sql="DELETE FROM shopcar WHERE id=?";
        pool.query(sql,[$id],(err,result)=>{
            if(err) throw err;
            if(result.affectedRows>0){
                res.send({code:1,msg:"删除成功"})
            }
        })
})
module.exports=router;//导出路由器；
