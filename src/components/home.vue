<template>
  <div>
    <!-- 搜索 -->
    <search :style="cloth" @chufa="chufaqi($event)"></search>  
    <div :style="main" class="box">
    <headd @change="fun($event)" :red="red"></headd>
    <!-- 轮播图 -->
    <mt-swipe :auto="2500">
      <mt-swipe-item  v-for="(item,k) in swiper" :key="k">
        <img v-lazy="item.img_url" alt="">
      </mt-swipe-item>
    </mt-swipe>
    <!-- 滑块 -->
    <div class="huakuai" @touchstart="h_start($event)" @touchmove="h_move($event)" @touchend="h_end($event)">
        <div class="container_1" v-for="(item,k) in scroll" :key="k">
        <img v-lazy="item.img_url" alt="">
        <span>{{item.title}}</span>
      </div>
    </div>
    <!-- 乐6集 -->
    <div>
      <div class="little-title">
        <img v-lazy="'../../static/imgLe6Ji.png'" alt="">
      </div>
      <img v-lazy="'../../static/lct_wap_llj.jpg'" alt="" class="img_g">
      <!-- 列表 -->
      <ul class="goods_list"  @touchstart="h_start($event)" @touchmove="h_move($event)" @touchend="h_end($event)">
        <li class="container_2" v-for="(list,k) in llj" :key="k" >
          <a href="javascript:;" class="le6ji_a">
            <img v-lazy="list.img_url" alt="" class="le6ji_img">
            <span class="big_s">{{list.title}}</span>
            <span class="little_s">￥{{list.price.toFixed(2)}}</span>
          </a>
        </li>
      </ul>
    </div>
    <!-- 特色馆 -->
    <div>
      <!-- 标题 -->
        <div class="little-title">
          <img src="../../static/teseguan.png" alt="yuliwei">
      </div>
      <!-- 图片 -->
      <img src="../../static/lct_wap_tsg.jpg" alt="yuliwei" class="img_g"> 
      <!-- list -->
      <ul  class="goods_list"  @touchstart="h_start($event)" @touchmove="h_move($event)" @touchend="h_end($event)">
        <li class="container_2" v-for="(list,k) in tsg" :key="k">
          <a href="javascript:;" class="le6ji_a">
            <img :src="list.img_url" alt="" class="le6ji_img">
            <span class="big_s">{{list.title}}</span>
            <span class="little_s">￥{{list.price.toFixed(2)}}</span>
          </a>
        </li>
      </ul>
    </div>
    <!-- 分割块 -->
    <div class="fgk"></div>
    <!-- nav -->
    <ul class="home_tit" :class="titleFixed"  @touchstart="h_start($event)" @touchmove="h_move($event)" @touchend="h_end($event)">
      <li @click="drag('drag1')">电器城</li>
      <li @click="drag('drag2')">食品汇</li>
      <li @click="drag('drag3')">米面油</li>
      <li @click="drag('drag4')">服装城</li>
      <li @click="drag('drag5')">日用品</li>
    </ul>
    <!-- -little-t -->
    <div class="little_t" id="drag1">
        <span class="icon_1"></span>
        <span>电器城</span>
        <div class="float_r">
        <span>更多</span>
        <span class="el-icon-arrow-right"></span>
        </div>
    </div>
    <!-- 商品 -->
    <div class="container_g">
      <div class="goods" v-for="(item,k) in dianqi" :key="k">
        <img v-lazy="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
    </div>
      <!--食品汇  -->
      <div class="little_t" id="drag2">
        <span class="icon_1"></span>
        <span>食品汇</span>
        <div class="float_r">
        <span>更多</span>
        <span class="el-icon-arrow-right"></span>
        </div>
    </div>
    <!-- 食品列表 -->
        <div class="container_g">
      <div class="goods" v-for="(item,k) in food" :key="k">
        <img v-lazy="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
    </div>
    <!-- 米面油 -->
    <div class="little_t" id="drag3">
      <span class="icon_1"></span>
      <span>米面油</span>
      <div class="float_r">
      <span>更多</span>
      <span class="el-icon-arrow-right"></span>
      </div>
  </div>
    <!-- 米面油列表 -->
    <div class="container_g">
      <div class="goods" v-for="(item,k) in mimian" :key="k">
        <img :src="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
    </div>
    <div class="little_t" id="drag4">
      <span class="icon_1"></span>
      <span>服装城</span>
      <div class="float_r">
      <span>更多</span>
      <span class="el-icon-arrow-right"></span>
      </div>
    </div>
    <!-- 服装 -->
    <div class="container_g">
      <div class="goods" v-for="(item,k) in fuzhuang" :key="k">
        <img :src="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
    </div>
     <!-- 服装 -->
    <div class="little_t" id="drag5">
      <span class="icon_1"></span>
      <span>日用品</span>
      <div class="float_r">
      <span>更多</span>
      <span class="el-icon-arrow-right"></span>
      </div>
    </div>
    <!-- 服装 -->
    <div class="container_g">
      <div class="goods" v-for="(item,k) in use" :key="k">
        <img :src="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
    </div>
    <!-- 热门推荐 -->
    <div class="little_t">
      <span class="icon_1"></span>
      <span>热门推荐</span>
    </div>
  <!-- 推荐列表 -->
    <div class="container_g">
      <div class="goods" v-for="(item,k) in hot" :key="k">
        <img :src="item.img_url" alt="">
        <p>{{item.title}}</p>
        <div class="goods_price">
          <span>{{item.price.toFixed(2)}}元</span>
          <span>已售{{item.sell}}件</span>
        </div>
      </div>
      <el-button style="width:11.6rem;height:17rem" @click="getMore">加载更多</el-button> 
    </div>
  <!-- 分割 -->
  <tabbar></tabbar>
    <!-- 固定定位 -->
    <div class="fixed">
      <img src="../../static/fixed.png" alt="">
      <a href="javascript:;" @touchstart="totop($event)" :class="opac"><img src="../../static/fixed2.png" alt=""></a>
    </div>
    </div>
    <div :style="laotou" class="change_b">
      <div class="laotou">
        <img src="../../static/laotou.gif">
      </div>
    </div>
  </div>
</template>
<script>
import {Toast} from "mint-ui"
import tabbar from "./tabbar"
import headd from "./header"
import search from "./search.vue"
export default {
  data(){
    return {
        laotou:"",
        red:"",
        main:"",
        cloth:"display:none",
        // hk:[
        //   {img_url:"../../static/huakuai1.png",msg:"乐6集"},
        //   {img_url:"../../static/huakuai2.png",msg:"特色馆"},
        //   {img_url:"../../static/huakuai1.png",msg:"乐6集"},
        //   {img_url:"../../static/huakuai2.png",msg:"特色馆"},
        //   {img_url:"../../static/huakuai1.png",msg:"乐6集"},
        //   {img_url:"../../static/huakuai2.png",msg:"特色馆"},
        //   {img_url:"../../static/huakuai1.png",msg:"乐6集"},
        //   {img_url:"../../static/huakuai2.png",msg:"特色馆"}
        // ],
        kg:false,
        start_x:0,
        // 滑块效果
        // margin_l:0,
        // transition_h:0,
        // 商品列表
        // lists:[
        //   {img_url:"../../static/le6ji1.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:81.00},
        //   {img_url:"../../static/le6ji2.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:21.00},
        //   {img_url:"../../static/le6ji3.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:152.00},
        //   {img_url:"../../static/le6ji4.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:652.00},
        //   {img_url:"../../static/le6ji1.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:82.00},
        //   {img_url:"../../static/le6ji2.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:22.00},
        //   {img_url:"../../static/le6ji3.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:153.00},
        //   {img_url:"../../static/le6ji4.jpg",explain:"拉芳精油修护精华液120ml*3轻盈补水保湿抚平毛躁 中国大陆 lovefun/拉芳 120ml*3",price:653.00},
        // ],
        // lists1:[
        //   {img_url:"../../static/teseguan1.jpg",explain:"【特色馆】岚县面塑单款 （孔雀开屏）手工艺",price:500.00},
        //   {img_url:"../../static/teseguan2.jpg",explain:"【特色馆】韶关土香楼 竹筒饼 220g/盒 125g/盒*4盒/箱  糕点 220g/盒（黑米味）",price:18.00},
        // ],
        goodsList:[
          {img_url:"../../static/goods1.png",msg:"海尔/统帅 LES60H-LC2(E)/ LES60H-LK1   60升防电墙电热水器",price:799,sell:23},
          {img_url:"../../static/goods2.png",msg:"海尔/统帅 LES60H-LC2(E)/ LES60H-LK1   60升防电墙电热水器",price:799,sell:23},
          {img_url:"../../static/goods3.jpg",msg:"海尔/统帅 LES60H-LC2(E)/ LES60H-LK1   60升防电墙电热水器",price:799,sell:23},
          {img_url:"../../static/goods4.jpg",msg:"海尔/统帅 LES60H-LC2(E)/ LES60H-LK1   60升防电墙电热水器",price:799,sell:23}
        ],
        opac:{
          opa:true,
          opa_active:false
        },
        titleFixed:{
          title_fixed:false
        },
        swiper:[],
        scroll:[],
        llj:[],
        tsg:[],
        dianqi:[],
        food:[],
        mimian:[],
        fuzhuang:[],
        use:[],
        hot:[],
        y:1,
        c:7
      }
  },
  components:{
    tabbar,headd,search
  },
  computed:{
  },

  methods:{
    drag(e){
      document.querySelector("#"+e).scrollIntoView(true);
    },
    getMore(){
       if(this.y>4){
          Toast("没有更多了");
          return;
        }
      this.axios.get("http://127.0.0.1:3000/load/more?y="+this.y+"&c="+this.c).then((resu)=>{
          this.hot=resu.data;
          this.y++;
      })
    },
   chufaqi(e){
    //  console.log(e)
    this.cloth=e.none;
    this.main=e.block;
   },
    fun(e){
      // console.log(e)
      this.cloth=e.cloth;
      this.main=e.main;
    },
    // 滑块事件
    h_move(e){
      var margin_l=(e.changedTouches[0].clientX-this.start_x)/2;
      var current=e.currentTarget.children;
      for(let i=0;i<current.length;i++){
        current[i].style.transform=`translate(${margin_l}px)`;
        current[i].style.transition="all 0s";
      }
    },
    h_start(e){
      this.start_x=e.changedTouches[0].clientX//滑动距离
      // console.log(e.changedTouches[0].clientX)
    },
    h_end(e){
      var current=e.currentTarget.children;
       for(let i=0;i<current.length;i++){
        current[i].style.transform=`translate(0px)`;
        current[i].style.transition="all 1s"
      }
    },


// 返回顶部
    totop(e){
      // console.log(document.documentElement.scrollTop)
      e.preventDefault();
      var aa=setInterval(()=>{
        document.documentElement.scrollTop-=100
        if(document.documentElement.scrollTop<=1){
          clearInterval(aa)
        }
      },1)
    }
  },
  created(){
    this.axios.get("http://127.0.0.1:3000/load/home").then((result)=>{
        this.swiper=result.data.data[0];
        // console.log(this.swiper)
        this.scroll=result.data.data[1];
        this.llj=result.data.data[2];
        this.tsg=result.data.data[3];
        this.dianqi=result.data.data[4];
        this.food=result.data.data[5];
        this.mimian=result.data.data[6];
        this.fuzhuang=result.data.data[7];
        this.use=result.data.data[8];
      });
      this.getMore();//加载更多
    setTimeout(()=>{
      this.laotou="display:none"
    },3000)
    // window.onload=()=>{
    //   this.laotou="display:none"
    // }
      window.onscroll=()=>{
      var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;

      if(scrollTop>=149){
          this.red="background:rgb(248,18,52)"
      }else{
          this.red=""
      } 
      if(scrollTop>=854.7){
        // console.log(333333)
        this.opac.opa=false;
        this.opac.opa_active=true;
        this.titleFixed.title_fixed=true;
      }else{
        this.opac.opa=true;
        this.opac.opa_active=false;
        this.titleFixed.title_fixed=false;
      }
    }
  }
}
</script>
<style scoped>
*{
  padding:0;
  margin:0;
  /* background:#f0f0f0; */
  box-sizing: border-box;
}
  .mint-swipe,.mint-swipe-items-wrap,.mint-swipe-item,img{
    width:100%;
    height:200px;
  }
  .huakuai{
    width:100%;
    height:92px;
    display:flex;
    overflow:hidden;
    background:#fff;
  }
  .container_1{
    display:flex;
    flex-direction: column;
    text-align: center;
    width:77px;
    height:92px;
  }
  .container_1>img{
    width:37px;
    height:37px;
    margin:10px 20px;
  }
  .container_1>span{
    font-size: 0.9rem;
    color:rgb(85,85,85);
  }
  /* 小标题样式 */
  .little-title{
    width:100%;
    height:34px;
    text-align: center;
    line-height:34px;
    background-color:#f0f0f0;
  }
  /* 标题图片样式 */
  .little-title>img{
    width:115px;
    height:14px;
  }
  .img_g{
    width:100%;
    height:100px;
  }
  /* 商品列表 */
  .goods_list{
    list-style: none;
    height:165px;
    overflow:hidden;
    font-size:12px;
    display:flex;
    flex-wrap: nowrap;
    background:#fff;
  }
  /* container_2 */
  .container_2{
    width:103.5px;
    height:100%;
    /* display:flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; */
  }
  .le6ji_a{
    width:103.5px;
    height:100%;
    color:#252525;
    text-decoration: none;
    display:flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .le6ji_img{
    width:93px;
    height:93px;
  }
  .big_s{
    display:inline-block;
    width:84.35px;
    height:34.85px;
    line-height:17px;
    font-size:12px;
    overflow: hidden;
    text-overflow:ellipsis;
    margin:5px 0px;
  }
  .little_s{
    width:100%;
    height:15px;
    font-size:12px;
    color:rgb(242,48,48);
    text-align:center;
    margin-bottom:5px;
  }
  /* 分割快 */
  .fgk{
    width:100%;
    height:10px;
    background:#f0f0f0;
  }
.home_tit{
  display:flex;
  justify-content: space-around;
  background:#ffffff;
  width:100%;
  height:48px;
  line-height: 48px;
  font-size: 14px;
  list-style: none;
}
.home_tit>li{
  background:#ffffff;
}
.little_t{
  width:100%;
  height:36px;
  background:#f0f0f0;
  line-height: 36px;
  font-size: 12px;
}
.icon_1{
  display:inline-block;
  width:5px;
  height:14px;
  background:red;
  margin-right:10px;
}
.float_r{
  display:inline-block;
  margin-left:274px;
}
.goods{
  box-sizing:border-box;
  width:50%;
  height:274px;
  background:#fff;
  border-right:1px solid #f0f0f0;
  border-bottom: 1px solid #f0f0f0; 
}
.goods>img{
  width:160px;
  height:160px;
}
.goods>p{
  margin:0 10px;
  width:170px;
  height:38px;
  line-height:19px;
  font-size: 13.8px;
  overflow : hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2; /* 限制在一个块元素显示的文本的行数 */
  -webkit-box-orient: vertical; /* 垂直排列 */
  word-break: break-all;  
}
.goods_price{
  display:flex;
  justify-content: space-between;
  width:170px;
  height:28px;
  margin:8px 10px 0;
}
.goods_price>span:first-child{
  font-size: 16px;
  color:red;
}
.goods_price>span:last-child{
  width:49px;
  height:16px;
  font-size: 11.7px;
  color:rgb(157,157,157)
}
.container_g{
  display:flex;
  width:100%;
  box-sizing: border-box;
  flex-wrap: wrap;
}
.fixed{
  width:56px;
  height:132px;
  display: flex;
  position:fixed;
  right:10px;
  bottom:130px;
  flex-direction: column;
  justify-content:space-between;
}
.fixed img{
  width:100%;
  height:56px;
}
.fixed>a{
  transition:all 1.5s;

}
.opa{
  opacity: 0;
}
.opa_active{
  opacity:1;
}
.title_fixed{
  position: fixed;
  top:50px;
  left:0px;
}
.box{
  width:100%;
}
.laotou{
  width:100%;
  height:100vh;
  background:#fff;
  position: fixed;
  top:0;
  left:0;
  z-index:100;
  display: flex;
  justify-content: center;
  align-items: center;
  /* overflow: hidden; */
}
.laotou>img{
  width:300%;
  height:50vh;
  margin-bottom: 6rem;
}
.change_b{
  display: block;
  }
</style>

