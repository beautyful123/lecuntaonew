<template>
    <div style="margin-top:50px;">
           <!-- tabbar -->
      <nav class="mui-bar mui-bar-tab">
			<router-link to="/?num=1" class="mui-tab-item" :class="{'mui-active':toggle1}" href="#tabbar" @click.native="changea(1)">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</router-link>
			<router-link to="/fenlei?num=2" class="mui-tab-item" :class="{'mui-active':toggle2}" href="#tabbar-with-chat" @click.native="changea(2)">
				<span class="mui-icon mui-icon-extra mui-icon-extra-class"></span>
				<span class="mui-tab-label">分类</span>
			</router-link>
			<router-link to="/shopping?num=3" class="mui-tab-item" :class="toggle3" href="#tabbar-with-contact" @click.native="verify_login('/shopping');changea(3)">
				<span class="mui-icon mui-icon-extra mui-icon-extra-cart"></span>
				<span class="mui-tab-label">购物车</span>
			</router-link>
			<router-link to="/mymessage?num=4" class="mui-tab-item"  :class="toggle4" href="#tabbar-with-map" @click.native="verify_login('/mymessage');changea(4)">
				<span class="mui-icon mui-icon-contact"></span>
				<span class="mui-tab-label">我的</span>
			</router-link>
		</nav>
    <!-- tabbar  end -->
    </div>
</template>
<script>
import {Toast} from "mint-ui";

export default {
	data(){
		return {
			phone:"",
			a:1,
		}
	},
	computed:{
		toggle1(){
			return this.a==1
		},
		toggle2(){
			return this.a==2
		},
		toggle3(){
			return {'mui-active':this.a==3}
		},
		toggle4(){
			return {'mui-active':this.a==4}
		}
	},
	methods:{
		verify_login(e){
            var url="http://127.0.0.1:3000/verify"
            this.axios.get(url).then((resu)=>{
								if(resu.data.code==-1){
									Toast(resu.data.msg);
									this.$router.push("/login?url="+e)
								}else{
									// 保存手机号
									this.phone=resu.data.msg
								}
            })
				},
				changea(e){
						this.a=e;
				}
	},
	created(){
		if(this.$route.query.num){
			this.a=this.$route.query.num;
		}
		var link=document.getElementsByClassName("mui-tab-item");
		for(var item of link){
			item.style.background="red"
			item.onclick=()=>{
				document.getElementsByClassName("mui-active")[0].className=""
				item.className="mui-active";
			}
		}
	}
}
</script>

