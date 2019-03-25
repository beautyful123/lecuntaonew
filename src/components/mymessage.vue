<template>
    <div class="container">
        <!-- 图片 -->
        <div class="top">
            <img src="../../static/my.png" alt="">
            <img src="../../static/touxiang.png" alt="ylw" class="icon">
            <span class="uname">用户名</span>
            <span class="mui-icon mui-icon-gear set" @click="nav('/set')"></span>
        </div>
        <section>
            <div class="list-style">
                <span>我的订单</span>
                <span>查看全部订单&nbsp;<span class="mui-icon mui-icon-arrowright"></span> </span>
            </div>
            <div class="main">
                <div class="main_list">
                    <span class="mui-icon-extra mui-icon-extra-prech">
                        <span class="mui-badge mui-badge-danger"></span>
                    </span>
                    <span>待付款</span>
                </div>
                <div class="main_list">
                    <span class="mui-icon-extra mui-icon-extra-express"></span>
                    <span>待发货</span>
                </div>
                <div class="main_list">
                    <span class="mui-icon-extra mui-icon-extra-gift"></span>
                    <span>待放货</span>
                </div>
                <div class="main_list">
                    <span class="mui-icon mui-icon-reload"></span>
                    <span>退款退货</span>
                </div>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon-extra mui-icon-extra-gold icon_list_4"></span>
                    <span>我的集单</span>
                </div>
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon mui-icon-map icon_list_2"></span>
                    <span>收货地址</span>
                </div>
                <span>管理收货地址<span class="mui-icon mui-icon-arrowright"></span></span>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon-extra mui-icon-extra-gift icon_list_3"></span>
                    <span>卡券包</span>
                </div>
                <span>红包<span class="mui-icon mui-icon-arrowright"></span></span>
            </div>
            <hr class="fg">
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon-extra mui-icon-extra-gold icon_list_4"></span>
                    <span>账户余额</span>
                </div>
                <span class="mui-icon mui-icon-arrowright"></span>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon mui-icon-locked icon_list_5"></span>
                    <span>支付密码</span>
                </div>
                <span>设置、管理支付密码
                    <span class="mui-icon mui-icon-arrowright"></span>
                </span>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon mui-icon-locked icon_list_5"></span>
                    <span>联系电话</span>
                </div>
                <span>400-088-0692
                    <span class="mui-icon mui-icon-arrowright"></span>
                </span>
            </div>
            <div class="list-style">
                <div class="list_icon">
                    <span class="mui-icon mui-icon-locked icon_list_5"></span>
                    <span>意见反馈</span>
                </div>
                    <span class="mui-icon mui-icon-arrowright"></span>
            </div>
        </section>
        <footer class="other">
            <div>
                <img src="../../static/phone.png" alt="">
                <span>客户端</span>
            </div>
            <div>
            <img src="../../static/computer.png" alt="">
                <span>电脑版</span>
            </div>
            <div>
                <img src="../../static/men.png" alt="">
                <span>乐村淘官网</span>
            </div>
        </footer>
        <tabbar></tabbar>
    </div>
</template>
<script>
import tabbar from "./tabbar.vue"
export default {
    data(){
        return{}
    },
    components:{
		tabbar
    },
    methods:{
        nav(e){
            this.$router.push(e);
        }
    }
}
</script>
<style scoped> 
*{
    padding:0px;
    margin:0px;
    box-sizing: border-box;
}
.top{
    width:100%;
    height:13rem;
    position: relative;
}
.top>img:first-child{
    width:100%;
    height:100%;
}
.icon{
    width: 5rem;
    height: 5rem;
    position: absolute;
    top: 3rem;
    left: 9.1rem;
    border-radius: 3rem;
}
.uname{
    display:inline-block;
    width:100%;
    height:2rem;
    line-height: 2rem;
    background:rgba(0,0,0,0);
    font-size: 1rem;
    color:#fff;
    text-align:center;
    position:absolute;
    top:8.3rem;
}
.set{
    font-size: 1.5rem;
    position: absolute;
    top:1rem;
    right:1rem;
    color:#fff;
}
.list-style{
    width:100%;
    height:3rem;
    /* line-height: 3.2rem; */
    background:#fff;
    padding:0 1rem;
    font-size: 0.9rem;
    color:#333;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-bottom: 0.01rem solid #ccc;
}

.list-style>span:last-child{
    color:#b2b2b2;
}
.icon_list_1{
    font-size: 1.5rem;
    color:#663dfe;
}
.icon_list_2{
    font-size: 1.5rem;
    color:#60d67b;
}
.icon_list_3{   
    font-size: 1.5rem;
    color:#ff7e00;
}
.icon_list_4{   
    font-size: 1.5rem;
    color:#ff300e;
}
.icon_list_5{   
    font-size: 1.5rem;
    color:#ff7e00;
}
.list_icon>span:last-child{
    margin-left: 0.5rem;
}
.main{
    width:100%;
    height:7rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: #fff;
    border-bottom: 0.8rem solid #f0f0f0;
}
.main_list{
    width:25%;
    height:100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    color:#333;
}
.main_list>span:first-child{
    font-size: 1.8rem;
    color:red;
    margin-bottom:0.6rem;
}
.fg{
    background-color:#f0f0f0;
    height:0.8rem;
    border:none;
}
.other{
    width:100%;
    height:8rem;
    background:#fff;
    display:flex;
    justify-content: space-between;
    align-items: center;
}
.other>div{
    width:33%;
    height:100%;
    display:flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.other>div>img{
    width:2.2rem;
    height:2.2rem;
    margin-bottom: 1rem;
}
</style>


