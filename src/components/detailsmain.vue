<template>
    <div>
        <header class="top">
            <h3 class="f_left">商品</h3>
            <span class="mui-icon mui-icon-arrowleft" @click="go(-1)"></span>
        </header>
        <div class="container">
            <img :src="dataList[did].img_url" alt="ylw">
            <hr>
            <p>{{dataList[did].title}}</p>    
            <span>3秒滴水成冰，双倍快速制冷；时尚钣金外观，仿钢板设计抗击抗划，美观简洁</span>
            <h3>￥{{dataList[did].price.toFixed(2)}}</h3>
            <del>{{(dataList[did].price+200).toFixed(2)}}</del>
            <footer class="bottom">
                <div class="flex">
                    <span class="mui-icon-extra mui-icon-extra-card"></span>
                    <span>店铺</span>
                </div>
                <div class="flex">
                    <span class="mui-icon-extra mui-icon-extra-cart"></span>
                    <span>购物车</span>
                </div>
                <div class="bottom_right bottom_right_left">
                    <button class="bottom_right_left"  @click="add">加入购物车</button>
                </div>
                <div class="bottom_right button_right_right">
                    <button class="button_right_right">立即购买</button>
                </div>
            </footer>
        </div>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
        return {
            dataList:[],
            did:''
        }
    },
    methods:{
        getData(){
            let testArray = JSON.parse(this.$route.query.dataList)
            this.dataList=testArray;
            this.did=this.$route.query.did;
        },
        go(e){
           window.history.go(e) 
        },
        add(){
            var url1="http://127.0.0.1:3000/verify"
            this.axios.get(url1).then((resu)=>{
                if(resu.data.code==-1){
                    Toast(resu.data.msg)
                    return;
                }else if(resu.data.code==1){
                    let uname=resu.data.msg;
                    let title=this.dataList[this.did].title;
                    let img_url=this.dataList[this.did].img_url;
                    let price=this.dataList[this.did].price;
                    let gid=this.dataList[this.did].gid;
                    let lid=this.dataList[this.did].lid;
                    let did=this.dataList[this.did].id;
                    var url=`http://127.0.0.1:3000/shopcar?gid=${gid}&lid=${lid}&did=${did}&title=${title}&img_url=${img_url}&price=${price}&uname=${uname}`;
                    this.axios.get(url).then((resu)=>{
                        Toast(resu.data.msg)
                    })
                }
            })
            
        }
    },
    created(){
        this.getData();
    }
}
</script>

<style scoped>
     *{
        margin:0;
        padding:0;
        background:#fff;
        box-sizing: border-box;
    }
    body{
        overflow:hidden;
    }
    .top{
        width:100%;
        height:3rem;
        text-align:center;
        line-height: 3rem;
        position: relative;
    }
    .top>h3{
        width:100%;
        height:100%;
        line-height: 3rem;
        font-size: 1.12rem;
        font-weight: normal;
    }
    .top>span{
        position:absolute;
        top:9px;
        left:5px;
        font-size: 2rem;
        color:#a7a7a7;
    }
    .container{
        width:100%;
        background:#fff;
        height:85vh;
    }
    .container img{ 
        width:100%;
        height:23.44rem;
    }
    .container>p{
        font-size:0.93rem;
        color:#333; 
        width:79%;
        overflow: hidden;
        padding-left: 0.5rem;
    }
    .container>span{
        font-size: 0.5rem;
        color:#999;
    }
    .container>h3{
        color:#ff4b4b;
        font-size: 1.5rem;
        display: inline-block;
        height:1.8rem;
        line-height: 1.8rem;
        border-top:1px solid rgba(0,0,0,0.1)
    }
    .container>del{
        display: inline-block;
        color:#999;
        font-weight: normal;
        font-size: 0.75rem;
    }
    .bottom{
        width:100%;
        height:3.15rem;
        position:fixed;
        bottom:0px;
        left:0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .bottom>div{
        height:100%;
    }
    .flex{
        display:flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-size: 0.65rem;
        color:#808080;
    }
    .flex>span{
        margin:0.05rem;
        width:3.15rem;
        text-align: center;
    }
    .bottom_right{
        width:8.18rem;
        height:3.15rem;
        line-height:3.15rem; 
        text-align: center;
    }
    .bottom_right>button{
        border:none;
        width:100%;
        height:100%;
        font-size: 1rem;
        color:#fff;
    }
    .bottom_right_left{
        background:#ff9c00;
    }
    .button_right_right{
        background:#f64750;
    }
</style>

