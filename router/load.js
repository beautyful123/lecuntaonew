const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get("/home",(req,res)=>{
    var obj={code:1,data:[]}
    var sql="SELECT * from home_swiper"
    var p=0;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.data[0]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql2="SELECT * from home_scroll"
    pool.query(sql2,(err,result)=>{
        if(err) throw err;
        obj.data[1]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql3="SELECT * from home_llj"
    pool.query(sql3,(err,result)=>{
        if(err) throw err;
        obj.data[2]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql4="SELECT * from home_tsg"
    pool.query(sql4,(err,result)=>{
        if(err) throw err;
        obj.data[3]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql5="SELECT * from home_dianqi"
    pool.query(sql5,(err,result)=>{
        if(err) throw err;
        obj.data[4]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql6="SELECT * from home_food"
    pool.query(sql6,(err,result)=>{
        if(err) throw err;
        obj.data[5]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql7="SELECT * from home_mimian"
    pool.query(sql7,(err,result)=>{
        if(err) throw err;
        obj.data[6]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql7="SELECT * from home_fuzhuang"
    pool.query(sql7,(err,result)=>{
        if(err) throw err;
        obj.data[7]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })
    var sql8="SELECT * from home_use"
    pool.query(sql8,(err,result)=>{
        if(err) throw err;
        obj.data[8]=result
        p+=1
        if(p==9){
            res.send(obj)
        }
    })

})
    var arr=[];
    router.get("/more",(req,res)=>{
        var start=req.query.y;
        var count=req.query.c;
        //当前页数 newc
        var nowc=(start-1)*count;
        var sql9="SELECT * from home_hot LIMIT ?,?"
        nowc=parseInt(nowc);
        count=parseInt(count);
        pool.query(sql9,[nowc,count],(err,result)=>{
            if(err) throw err;
            arr=arr.concat(result)
            if(result.length==0){
                res.send({code:-1,msg:"没有更多了"})
            }
            res.send(arr);
        })
    })
module.exports=router;//导出路由器；