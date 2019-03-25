// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from "axios"
import qs from "qs"



Vue.prototype.qs = qs

//修改配置信息 跨域保存session值!!!!
axios.defaults.withCredentials=true

//注册组件
Vue.prototype.axios=axios;
// 引入element-ui
import ElementUI from "element-ui"
// 引入element-ui的样式文件
import "element-ui/lib/theme-chalk/index.css"
// 注册组件
Vue.use(ElementUI)

//引入mint-ui
import {Header,Swipe,SwipeItem,Button, TabContainer, TabContainerItem,Lazyload} from "mint-ui"
import "mint-ui/lib/style.css"
// 引入mui的样式文件
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css' 
// 引入全局样式文件
import '../static/css/lecuntao.css'
Vue.use(Lazyload)
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(TabContainer.name,TabContainer);
Vue.component(TabContainerItem.name,TabContainerItem);
Vue.component(Button.name,Button);




Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
