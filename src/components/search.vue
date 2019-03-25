<template>
    <div>
        <!-- 搜索界面 -->
    <div>
      <!-- 搜索顶部 -->
      <div class="c_container">
        <span class="mui-icon mui-icon-closeempty" @click="fn"></span>
        <div class="two_container">
          <div class="shop">
            <span>商品</span>
            <span class="mui-icon mui-icon-arrowdown"></span>
          </div>
          <div class="c_input">
            <span class="">|</span>
            <input v-model="search_hot" type="text" placeholder="输入商品名称">
            <span class="mui-icon mui-icon-close"></span>
          </div>
        </div>
        <p @click="histoy_search">搜索</p>
      </div>
  <!-- 热门 -->
<h2 class="hot">
  <i>Hot</i>
  <span>热门搜索</span>
</h2>
<!-- 推荐列表按钮 -->
  <ul class="hot_b">
    <li v-for="(item,k) of hot" :key="k"><a href="javascript:;">{{item}}</a></li>
  </ul>
  <!-- 历史 -->
  <div class="history">
    <span>搜索历史</span>
    <div>
    <span class="mui-icon mui-icon-trash" style="font-size:25px"></span>
    清空
    </div>
  </div>
  <ul class="history_list">
    <li>{{search_hot}}</li>
  </ul>
    </div>
    </div>
</template>
<script>
export default {
    data(){
        return { 
            hot:["年货","乐六集","米面","可乐","手机","洗衣粉"],
            i:0,//localStorage用作下标
            search_hot:"",//localStorage值
        } 
    },
    methods:{
         histoy_search(){
      // this.i++;
      // localStorage.setItem("i",i)
      // var a=localStorage.getItem(i)
      // localStorage.setItem(`letaocun${this.i}`,this.search_hot)
      // console.log(localStorage.getItem(`letaocun${this.i}`))
    },
        fn(){
            this.$emit("chufa",{block:"display:block",none:"display:none"})
        }
    }
}
</script>

<style scoped>
*{
  margin:0px;
  padding:0px;
}
  .c_container{
  display:flex;
  width:100%;
  height:40px;
  justify-content: space-around;
  color:#808080;
}
.c_container>span:first-child{
  font-size: 32px;
  margin-top:12px;
}
.two_container{
  width:285px;
  height:32px;
  margin-top:10px;
  background:#f2f2f2;
  border-radius: 15px;
  display:flex;
  justify-content: center;
}
.shop{
  width:23%;
  height:100%;
  margin-left:13px;
  margin-right:5px;
  line-height: 32px;
}
.shop>span:last-child{
  font-size: 18px;
}
.c_input{
  width:70%;
  height:100%;
  display:flex;
  align-content: center;
  margin-top:3.5px;
}
.c_input>span:first-child{
  color:#808080;
  font-size: 20px;
  opacity: 0.4;
}
.c_input>input{
  width:160px;
  height:25px;
  border:none;
  background:#f2f2f2;
  font-size:15px;
  line-height: 20px;
}
.c_input>span:last-child{
  font-size: 15px;
  line-height: 25px;
}
.c_container>p:last-child{
  width:40px;
  height:100%;
  color:black;
  margin-top:5px;
  line-height: 40px;
}
.hot{
  width:100%;
  height:25px;
  font-size: 16px;
  margin:10px 0px 0 10px;
}
.hot>i{
  font-size: 14px;
    color: #f81234;
    font-weight: 600;
    font-family: "微软雅黑";
    font-style: normal;
}
.hot>span{
  font-weight: normal;
  font-size: 15px;
}
.hot_b{
  display:felx;
  justify-content: flex-start;
  flex-wrap: wrap;
  width:100%;
  list-style: none;
  margin-bottom: 10px;
}
.hot_b>li{
  display:inline-block;
  margin-top:5px;
  height:38px;
}
.hot_b>li>a{
  border:1px solid #959595;
  border-radius: 20px;
  padding:6px 15px;
  margin:0 6px;
  font-size: 14px;
  color:black;
}
.history{
  display: flex;
  justify-content: space-between;
  width:100%;
  height:40px;
  line-height: 40px;
  font-size: 14px;
}
.history>span{
  margin:0 10px;
  font-size: 14px;
  line-height: 40px;
}
.history>span:first-child{
  color:#808080;
}
.history>div{
  display:inline-block;
    margin:0 10px;
    font-size: 14px;
    line-height: 40px;
}
.history_list{
  border-top: 0.6px solid #f0f0f0;
}
.history_list>li{
  width:100%;
  height:40px;
  border-bottom: 0.6px solid #f0f0f0;
  padding-left:12px;
  line-height: 40px;
  color:#333;
  font-size:15px;
}
</style>
