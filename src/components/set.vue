<template>
    <div>
        <header class="top">
            <span class="mui-icon mui-icon-arrowleft pos_left" @click="go"></span>
            <span>设置</span>
        </header>
        <section class="container">
            <span>关于乐村淘</span>
            <span class="mui-icon mui-icon-arrowright pos_right"></span>
        </section>
        <footer>
            <button class="output" @click="clear">退出登录</button>
        </footer>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
        return {

        }
    },
    methods:{
        go(){
            window.history.go(-1)
        },
        clear(){
            var url="http://127.0.0.1:3000/logout";
            this.axios.get(url).then((resu)=>{
                Toast(resu.data.msg)
                this.$router.push('/login')
            })
        }
    }
}
</script>

<style scoped>
    .top{
        width:100%;
        height:3rem;
        line-height: 3rem;
        text-align: center;
        font-size: 1.15rem;
        color:#333;
        position: relative;
        background:#fff;
        border-bottom: 0.2rem solid rgba(0,0,0,0.13);
    }
    .pos_left{
        position: absolute;
        top:0.8rem;
        left:0.5rem;
    }
    .container{
        width:100%;
        height:3rem;
        padding:0 1rem;
        background:#fff;
        display:flex;
        justify-content: space-between;
        align-items: center;
    }
    .container>span:last-child{
        font-size: 1rem;
        color:#333;
        opacity: 0.3;
    }
    .output{
        margin:0 auto;
        display: block;
        margin-top:1rem;
        width:95%;
        height:3.125rem;
        background:#f81234;
        line-height: 3.125rem;
        text-align: center;
        color:#fff;
        font-size: 1rem;
        border:0;
        border-radius: 0.5rem;
        padding:0;
    }
</style>

