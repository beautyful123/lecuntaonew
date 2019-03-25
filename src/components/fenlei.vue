<template>
<div>
    <!-- search子组件 -->
    <search :style="none" @chufa="change($event)"></search>
    <!-- 头 -->
    <div class="main" :style="block">
        <div class="f_input">
            <input type="text" placeholder="输入商品名称" @click="fn">
            <span><router-link to="/" style="color:black">取消</router-link></span>
        </div>
    <!-- 列表 -->
  <ul class="f_list">
      <li v-for="(item,k) in f_list" :key="k"  @click="getFloor(item)" :class='{f_red:k==0}'>{{item}}</li>
  </ul>
  <!-- test -->
  <mt-tab-container v-model="active" class='f_fixed'>
  <div>
    <ul class="f_goods">
        <li class="f_goods_list" v-for="(item,k) in floorList" :key="k" @click="navigator(item.gid,item.id)">
            <img :src="item.img_url" alt="">
            <span>{{item.title}}</span>
        </li>
    </ul>
  </div>
</mt-tab-container>
    <!-- tabbar子组件 -->
    <tabbar></tabbar>
</div>
</div>
</template>
<script>
import search from "./search.vue"
import tabbar from "./tabbar.vue"
export default {
    data(){
        return {
            active:"电器/数码",
            none:"display:none",
            block:"display:block",
            f_list:["电器/数码","食品饮料","农产品","农用物资","通讯/办公","个护/化妆","家居/建材","服装/饰品","鞋帽/箱包","母婴/玩具","旅游/房产"],
            floorList:[]
        }
    },
    methods:{
        // 发送ajax请求数据
        getFloor(e){
            if(event){
                var a=document.getElementsByClassName("f_red")[0]
                if(a!=undefined){
                    a.className="";
                }
                event.target.className="f_red";
            }
            var url="http://127.0.0.1:3000/goodsList?gid="+e;
            this.axios.get(url).then((resu)=>{
                this.floorList=resu.data.data;
            })
        },
        navigator(n,m){
            this.$router.push('/details?gid='+n+"&id="+m)
        },
        fn(){
            this.none=this.block;
            this.block="display:none"
        },
        change(e){
            this.none=e.none;
            this.block=e.block;
        }
    },
    components:{
        search,tabbar
    },
    created(){
        this.getFloor('电器/数码');
        // 无法进行DOM操作
    },
    mounted(){
           
    }
}
</script>

<style scoped>

    *{
        padding:0px;
        margin:0px;
        box-sizing: border-box;
        background:#fff;
    }
    .f_input{
        width:100%;
        height:60px;
        line-height:60px;
        border-bottom: 1px solid gray;
    }
    .f_input>input{
        width:292px;
        height:30px;
        background:#f2f2f2;
        border-radius: 20px;
        margin-left:20px;
        border:none;
        font-size: 14px;
    }
    .f_input>span{
        font-size: 15px;
        margin-left:5px;
    }
    .f_list{
        list-style: none;
        width:87.5px;
        color:#333;
    }
    .f_list li{
        width:100%;
        height:45px;
        line-height:45px;
        font-size:15px;
        text-align:center;
    }
    li{
        background:rgb(240,240,240);
    }
    .f_red{
        color:#f81234;
        background:#fff;
    }
    .f_fixed{
        position:fixed;
        right:0px;
        top:60px;
        width:76%;
        height:600px;
        /* background:red; */
    }
    .f_goods{
        display:flex;
        justify-content: flex-start;
        align-items: center;
        width:273px;
        /* height:100vh; */
        flex-wrap: wrap;
    }
    .f_goods_list{
        display: flex;
        flex-direction:column;
        align-items: center;
        width:33%;
        height:130.5px;
        background:#fff;
    }
     .f_goods_list>img{
         width:100%;
         height:90px;
     }
      .f_goods_list>span{
          font-size: 15px;
          margin:11.5px 0;
      }
</style>
