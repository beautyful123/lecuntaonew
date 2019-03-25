<template>
    <div>
        <!-- 头部 -->
        <div class="l_head">
            <router-link to="/"><span class="mui-icon mui-icon-closeempty"></span></router-link>
            <span>{{title}}</span>
        </div>
        <!-- login -->
        <mt-button @click="login('login')" class="btn_size btn_size1" type="danger">乐村淘账户登录</mt-button>
        <mt-button @click="login('push')" class="btn_size btn_size2" type="danger" plain>免费注册</mt-button>
        <mt-tab-container v-model="active" class='f_fixed'>
             <mt-tab-container-item id="login">
                    <div class="l_input">
                        <div>
                            <span class="mui-icon mui-icon-extra mui-icon-extra-phone"></span>
                            <input type="text" placeholder="输入手机号/用户名" v-model="login_1" autocomplete="off">
                        </div>
                        <div>
                            <span class="mui-icon mui-icon-locked"></span>
                            <input type="text" placeholder="请输入密码" v-model="login_2" autocomplete="off">
                        </div>
                    </div>
                 <!-- 登录按钮 -->
                 <mt-button class="l_btn" type="danger" @click="submit_login">登录</mt-button>
                 <mt-button class="l_btn" type="default" plain>找回密码</mt-button>
                <!-- over -->
             </mt-tab-container-item>
        <!-- 注册界面 -->
        <mt-tab-container-item id="push">
             <div class="l_input">
                <div>
                    <span class="mui-icon mui-icon-extra mui-icon-extra-phone"></span>
                    <input type="text" placeholder="注册手机号" v-model="push_1">
                </div>
                <div>
                    <span class="mui-icon mui-icon-locked"></span>
                    <input type="text" placeholder="填写短信验证码">
                </div>
             </div>
             <div class="l_input">
                <div>
                    <span class="mui-icon mui-icon-locked"></span>
                    <input type="text" placeholder="设置登录密码(8-20字母数字组合)" v-model="push_2">
                </div>
                <div>
                    <span class="mui-icon mui-icon-locked"></span>
                    <input type="text" placeholder="确认密码" v-model="push_3">
                </div>
            </div>
            <p class="l_position">收不到短信，试试语音验证码</p>
            <!-- 注册按钮 -->
            <mt-button class="l_btn" type="danger" @click="submit_push">注册</mt-button>
        </mt-tab-container-item>
        </mt-tab-container>
    </div>
</template>
<script>
import {Toast} from "mint-ui"
export default {
    data(){
        return {
            active:"login",
            title:"登录",
            //初始化注册表单
            push_1:"",
            push_2:"",
            push_3:"",
            // 登录初始化
            login_1:"",
            login_2:"",
            // 链接
            url:""
        }
    },
    methods:{
        login(e){
            event.currentTarget.className="mint-button btn_size btn_size1 mint-button--danger mint-button--normal"
            this.active=e;
            if(e=="login"){
                this.title="登录";
            }else{
                this.title='注册';
            }
        },
        submit_push(){
                // 验证是否写入内容
                var push_1 = this.push_1.replace(/\s*/g,"");
                var push_2 = this.push_2.replace(/\s*/g,"");
                var push_3 = this.push_3.replace(/\s*/g,"");
                var phone=/^1[3-9]\d{9}$/ig;
                var upwd=/^[0-9a-zA-Z]{6,12}$/g
                if(push_1==""){
                    Toast("请输入手机号");
                    return;
                }else if(push_2==""){
                    Toast("请输入密码")
                    return ;
                }else if(push_3==""){
                    Toast("请再次输入密码")
                    return ;
                }else if(this.push_2!=this.push_3){//两次输入密码是否相同
                    Toast("两次密码输入不一致")
                    return;
                }
                else if(!phone.test(this.push_1)){
                     Toast("手机号格式错误");
                     return;
                }else if(!upwd.test(this.push_2)){
                    Toast("密码应为6-12位数字字母组合")
                    return ;
                }else{
                        // 相同；发送ajax请求
                        var postdata=this.qs.stringify({
                             phone:this.push_1,
                             upwd:this.push_2
                        })
                        var url="http://127.0.0.1:3000/push"
                        this.axios.post(url,postdata).then((result)=>{
                            Toast(result.data.msg)
                        })
                    }
        },
        submit_login(){
            let login_1 = this.login_1.replace(/\s*/g,"");
            let login_2 = this.login_2.replace(/\s*/g,"");
            var rex1=/^[0-9a-zA-Z]{6,15}$/g
            var rex2=/^[0-9a-zA-Z]{6,12}$/g
                if(login_1==""){
                    Toast("请输入用户名/手机号");
                    return;
                }else if(login_2==""){
                    Toast("请输入密码")
                    return ;
                }else if(!rex1.test(login_1)){
                    Toast("用户名应为6-15位")
                    return;
                }else if(!rex2.test(login_2)){
                    Toast("密码应为6-12位")
                    return;
                }else{
                    var url="http://127.0.0.1:3000/login"
                    var login_t=this.qs.stringify({
                        phone:this.login_1,
                        upwd:this.login_2
                    })
                    this.axios.post(url,login_t).then(resu=>{
                        Toast(resu.data.msg)
                        if(resu.data.code==1){
                            this.$router.push(this.url)
                        }
                    })
                }

        }
    },
    created(){
        setTimeout(()=>{
            this.url=this.$route.query.url;
        },0)
    },
    mounted(){
       
    }
}
</script>

<style scoped>
    body{
        background:#f0f0f0
    }
    *{
        padding:0px;
        margin:0px;
        box-sizing: border-box;
        /* background:#f0f0f0; */
    }
    .l_head{
        width:100%;
        height:2.96rem;
        line-height:56px;
        text-align: center;
        margin-bottom: 20px;

    }
    .l_head span:first-child{
        font-size: 55px;
        float:left;
        color:#f81234;

    }
    .l_head>span:last-child{
        font-size: 19px;
        font-weight: normal;
        margin-right: 50px;
    }
    .btn_size{
        width:175px;
        height:40px;
        border:1px solid #f81234;
        text-align: center;
        line-height: 40px;
        margin-bottom: 15px;

    }
    .btn_size1{
        margin-left:10.1px;
    }
    .btn_size2{
        margin-right:10.1px;
    }
    .l_input{
        width:95%;
        height:100px;
        /* background:#fff; */
        border-radius: 7px;
        margin:0 auto;
        background:#fff;
        margin-bottom: 25px;
    }
     .l_input>div{
         text-align: center;
         height:50%;
     }
    .l_input>div:first-child{
        border-bottom: 1px solid #ccc;
    }
     .l_input>div>input{
         height:100%;
         border:none;
         padding:0px;
         margin:0px;
         font-size: 14px;
         width:70%;
         vertical-align:3px;
     }
      .l_input>div>span{
          margin-left: -68px;
          margin-top: 5px;
          font-size: 30px;
      }
      /* 登录按钮样式 */
      .l_btn{
          width:95%;
          height:45px;
          font-size: 16px;
          margin-bottom: 15px;
          margin-left: 8px;
      }
      .l_position{
          margin-top: -10px;
          margin-left: 10px;
          margin-bottom: 10px;
      }
</style>
