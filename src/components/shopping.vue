<template>
    <div>
        <!-- 顶部 -->
        <header class="container">
            <span class="mui-icon mui-icon-arrowleft" @click="fn"></span>
            <span style="margin-left:3rem">购物车</span>
            <div style="width:6rem;margin-right:0.2rem">
                <span v-show="delet.dis_none" style="float:right; margin-top:0" @click="changepay(false)">编辑全部</span>
                <span v-show="!delet.dis_none" style="float:right; margin-top:0" @click="changepay(true)">完成</span>
            </div>
        </header>
        <!-- body -->
        <div class="container2">
            <div class="title mui-input-row mui-checkbox mui-left">
                <!-- <input type="checkbox" class="check lef"> -->
                <!-- <span>海尔乐家旗舰店</span> -->
            </div>
            <div class="goods mui-input-row mui-checkbox mui-left" v-for='(item,k) in dataList' :key="k"> 
                <!-- 1.kuang -->
                <input type="checkbox" name="1" class="check lef" style="margin-top:2.4rem" @change="listpay($event,item.count,item.price,k)" :data-index="k" :data-id="item.id" :data-count="item.count" :data-price="item.price">
                <!-- 2.img -->
                <img :src="item.img_url" alt="">
                <!-- 3。div -->
                <div class="check_main">
                    <p>{{item.title}}</p>
                    <span class="goods_choose">
                        <span>版本</span>
                        <span>v1不带唛</span>
                    </span>
                    <div class="goods_price">
                        <div class="goods_price_left">
                            <span>￥{{(item.price+100).toFixed(2)}}</span>
                            <span>￥{{item.price.toFixed(2)*item.count}}</span>
                        </div>
                        <div class="godos_price_right">
                            <span @click="count(item.gid,item.lid,item.did,-1,item.count,item.price,k)">-</span>
                            <span>{{item.count}}</span>
                            <span @click="count(item.gid,item.lid,item.did,1,item.count,item.price,k)">+</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="fenge"></div>
            <!--结算块  -->
            <div class=" mui-input-row mui-checkbox mui-left pay">
                <div class="pay_l">
                    <input id="d1" type="checkbox" style="margin-left:-1rem;margin-top:0.4rem" @change="allsell($event)">
                    <span style="margin-left:2.5rem">全选</span>
                     <span style="margin-left:3rem;">合计</span>
                    <span style="color:#f81234">￥{{total.toFixed(2)}}</span>
                    <span>不含运费</span>
                </div>
                <div class="payfor">
                    去结算
                </div>
            </div>
            <!-- 删除块 -->
            <div class=" mui-input-row mui-checkbox mui-left pay" :class="delet">  
                <div class="pay_l">
                    <input id="d2" type="checkbox" style="margin-left:-1rem;margin-top:0.4rem" @change="alldelete($event)">
                    <span style="margin-left:2.5rem">全选</span>
                </div>
                <div class="payfor" @click="clearcar">
                    删除
                </div>
            </div>
        </div>
        <tabbar></tabbar>
    </div>
</template>
<script>
import { MessageBox } from 'mint-ui';
import tabbar from "./tabbar.vue"
import {Toast} from "mint-ui"
export default {
    data(){
        return {
            url:"/shopping",
            num:1,
            dataList:[],
            delet:{dis_none:true},//删除块
            phone:'',
            duigou:false,
            total:0,
            arr:[],
            deleteall:[],
            totaldelete:0
        }
    },
    methods:{
        clearcar(){
            for(var item of this.deleteall){
                var url=`http://127.0.0.1:3000/shopcar/delete?id=${item};`
                this.axios.get(url).then((resu)=>{
                    if(resu.data.code==1){
                        this.verify_login();
                        Toast(resu.data.msg)
                        //价钱减去了
                        this.total-=this.total;
                    }
                })
            }
            this.verify_login();
        },
        // 全删
        alldelete(e){
            let checkboxs=document.querySelectorAll(".goods input");
            let arr=[];
            if(e.target.checked){
                for(let item of checkboxs){
                    arr.push(item.dataset.id)
                    item.checked=true;
                }
                    this.deleteall=arr;
            }else{
                for(let item of checkboxs){
                    this.deleteall=[];
                    item.checked=false;
                }
            }
        },
        //全选
        allsell(e){
            let checkboxs=document.querySelectorAll(".goods input");
            if(e.target.checked){
                var arr=[];
                for(let item of checkboxs){
                    item.checked=true;
                    arr.push(item.dataset.index);
                    this.total+=item.dataset.price*item.dataset.count;
                }
                this.arr=arr;
            }else{
                for(var item of checkboxs){
                    item.checked=false;
                    this.arr=[];//清空数组
                    this.total=0;
                }
            }
        },
        // 单选
        listpay(e,count,price,index){
            if(e.target.checked){
                this.arr.push(index);//选中，在数组arr中添加该下表
                this.deleteall.push(e.target.dataset.id);//保存所有物品的id
                this.total+=count*price;
            }else{
                var a=this.dataList.indexOf(index);
                this.arr.splice(a,1)//未选中，删除下标
                this.deleteall.splice(a,1)//删除该id
                this.total-=count*price;
            }
            if(this.deleteall.length<this.dataList.length){
                d1.checked=false;
                d2.checked=false;
            }
            if(this.deleteall.length==this.dataList.length){
                d1.checked=true;
                d2.checked=true;
            }
            if(this.arr.length==0){
                d1.checked=false;
                d2.checked=false;
            }
        },
        verify_login(){
            var url="http://127.0.0.1:3000/verify"
            this.axios.get(url).then((resu)=>{
                if(resu.data.code==-1){
                    Toast(resu.data.msg);
                    this.$router.push("/login?url=/home")
                }else{
                    // 保存手机号
                    this.phone=resu.data.msg;
                    var url="http://127.0.0.1:3000/shopcar/getData?uname="+this.phone;
                    this.axios.get(url).then((resu)=>{
                        this.dataList=resu.data.data;
                    })
                }
            })
        },
        count(a,b,c,e,f,g,k){
            if(e==-1&&f==1) return;
            var url=`http://127.0.0.1:3000/shopcar/changecount?gid=${a}&lid=${b}&did=${c}&count=${e}`;
            this.axios.get(url).then((resu)=>{
                this.verify_login();
            })
            for(var i=0;i<this.arr.length;i++){
                if(this.arr[i]==k){
                    this.total+=e*g;
                }
            }
        },
        fn(){
            window.history.go(-1)
        },
        changepay(e){
            this.delet.dis_none=e;
            //如果选中
        },
    },
    created(){
        this.verify_login();
        // MessageBox.confirm('Are you sure?').then((active)=>{
        //     if(active=='confirm'){
        //         console.log('hahah')
        //     }
        // }).catch((err)=>{
        //     if(err=='cancel'){
        //         MessageBox.alert("取消成功", "");
        //     }
        // })

    },
    components:{
		tabbar
	}
}
</script>
<style scoped>
    *{
        margin:0;
        padding:0;
        box-sizing: border-box;        
    }
    html{
       height: 100vh;
        background: #fff;
    }
    input.lef{
        margin-left: -1rem;
    }
    .container{
        width:100%;
        font-size: 18px;
        height:3rem;
        background:#fff;    
        line-height: 3em;
        color:#4c4c4c;
        display:flex;
        justify-content: space-between;
        border-bottom: 0.08rem solid #ccc;
    }
    .container span:first-child{
        margin-left: 0.5rem;
        margin-top:0.8rem;
    }
    .container span:last-child{
        margin-right:0.5rem;
    }
    .container2>div:first-child{
        width:100%;
        height:2.5rem;
        background:#fff;
        line-height: 2.5rem;
        position: relative;
    }
    .check{
        width:1.4rem;
        height:1.4rem;
        background:#fff;
        margin-top:0.1rem;
        margin-left:0.3rem;
    }
    .title>span{
        margin-top:1rem;
        position: absolute;
        top:-1rem;
        left:3rem;
    }
    .goods{
        width:100%;
        height:7.4rem;
        background:#f8f8f8;
        display:flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 0.3rem;
    }
    .goods>img{
        width:5.5rem;
        height:5.5rem;
    }
    .check_main{
        width:14rem;
        height:5.5rem;
    }
    .check_main>p{
        width:100%;
        height:2rem;
        line-height: 1rem;
        color:#333;
        font-size: 0.8rem;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        line-clamp: 2;
        -webkit-box-orient: vertical;
    }
    .goods_choose{
        width:100%;
        height:0.5rem;
        font-size: 0.8rem;
        color:#808080;
        margin-left:.0.1rem;
        display: inline-block;
    }
    .goods_price{
        font-size: 0.8rem;
        display: flex;
        justify-content: space-around;
    }
    .goods_price_left{
        width:50%;
        height:100%;
        display:flex;
        flex-direction:column;
        justify-content: center;
        align-items:flex-start;
    }
    .goods_price_left>span:first-child{
        height:0.9rem;
        font-size: 0.5rem;
        color:#808080;
        display: inline-block;
        text-decoration:line-through
    }
    .goods_price_left>span:last-child{
    font-size: 1.3rem;
    color:red;
    display: inline-block;
    }
    .godos_price_right{
        width:50%;
        float:right;
        text-align:right;
    }
    .godos_price_right>span{
        width:2rem;
        height:2rem;
        line-height: 2rem;
        background:#f0f0f0;
        display:inline-block;
        text-align:center;
    }
    .pay{
        width:100%;
        height:3rem;
        line-height: 3rem;
        background:#fff;
        position:fixed;
        left:0;
        bottom:3.2rem;    
    }
    .pay_l{
        float:left;
        font-size: 0.9rem;
        width:72%;
    }
    .payfor{
        width:6rem;
        height:100%;
        line-height: 3rem;
        text-align: center;
        color:#fff;
        font-size: 1rem;
        float:right;
        background:#fb0a84;
    }
    .fenge{
        width:100%;
        height:2.5rem;
        background:#fff;
    }
    /* .mui-checkbox input[type='checkbox']:checked:before{
        color:red;
    } */
</style>

