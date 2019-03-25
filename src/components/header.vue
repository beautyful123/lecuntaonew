<template>
    <div>
        <div class="fixed" :style="red">
            <div>
                <span class="mui-icon mui-icon-location"></span>
                <span>太原市</span>
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
            <div>
                <span class="mui-icon mui-icon-search"></span>
                <input type="text" placeholder="搜索您需要的商品" @click="fn">
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
        }
    },  
    props:["red"],
    created(){
        // console.log(this.red)
        // window.onscroll=()=>{
        // let scrollTop=document.body.scrollTop||document.documentElement.scrollTop;
        //  if(scrollTop>=149){
        //      this.red="background:rgb(248,18,52)"
        //      console.log(11111)
        //  }else{
        //      this.red=""
        //  }
        // }
    },
    methods:{
        aa(){
            
        },
        fn(){
            this.$emit("change",{cloth:"width:100%;height:700px;background:#fff",main:"display:none"})
        }
    }
}
</script>

<style scoped>
*{
    padding:0px;
    margin:0px;
}
.fixed{
    width:100%;
    height:50px;
    background:rgba(0,0,0,0);
    display:flex;
    position: fixed;
    top:0px;
    left:0px;
    align-items: center;
    justify-content:space-between;
    z-index: 10;
}
.fixed>div:first-child{
    width:100px;
    height:90%;
    text-align: center;
    line-height: 45px;  
}
.fixed>div:first-child>span{
    font-size: 14px;
    color:#fff;
    margin-left:1px;
}
.fixed>div:last-child{
    width:263px;
    height:30px;
    border-radius: 17.5px;
    background:#fff;
    margin-right: 10px;
}
.fixed>div:last-child>span{
    margin-left:8px;
    vertical-align: middle;
    font-size: 16px;
}
.fixed>div:last-child>input{
    width:205px;
    height:30px;
    border:none;
    font-size: 12px;
    padding:0px;
    margin:0px;
}
</style>
