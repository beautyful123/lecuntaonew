    <template>
    <div>
        <header class="top">
            <h3 class="f_left">{{title}}</h3>
            <span class="mui-icon mui-icon-arrowleft" @click="go(-1)"></span>
        </header>
        <ul class="nav" >
            <li @click="navcut(1)" :class="{active:toggle==1}">全部</li>
            <li @click="navcut(2)" :class="{active:toggle==2}">销量优先</li>
            <li @click="navcut(3)" :class="{active:toggle==3}" class="relative">
                <span>价格</span>
                <span class="el-icon-caret-top" :class="{price:!price}"></span>
                <span class="el-icon-caret-bottom" :class="{price:price}"></span></li>
            <li @click="navcut(4)" :class="{active:toggle==4}">人气</li>
        </ul>
        <!-- 主体 -->
        <section class="container"> 
            <ul class="card" v-for="(item,k) in dataList" :key="k" @click="toDetails(dataList,k)">
                <li><img :src="item.img_url" alt="ylw"></li>
                <li><p>{{item.title}}</p></li>
                <li class="pay"><span>￥</span><span>{{item.price.toFixed(2)}}</span><span>{{item.sell}}人付款</span></li>
            </ul>
        </section>
    </div>
</template>
<script>
export default {
    data(){
        return {
            toggle:1,
            price:false,
            details:[],
            gid:"",
            lid:"",
            dataList:[],
            title:"大家电"
        }
    },
    methods:{
        go(e){
           window.history.go(e) 
        },
        navcut(e){
            this.toggle=e
            // 判断名字
            if(e==1){
                var url="http://127.0.0.1:3000/details?gid="+this.gid+"&lid="+this.lid;
                this.axios.get(url).then((resu)=>{
                    this.dataList=resu.data.data;
                })
            }else if(e==2){
                var url="http://127.0.0.1:3000/details/sell?gid="+this.gid+"&lid="+this.lid;
                this.axios.get(url).then((resu)=>{
                    this.dataList=resu.data.data;
                })
            }else if(e==3&&this.price==false){
                this.search()
                var url="http://127.0.0.1:3000/details/priceasc?gid="+this.gid+"&lid="+this.lid;
                this.axios.get(url).then((resu)=>{
                    this.dataList=resu.data.data;
                })
            }else if(e==3&&this.price==true){
                this.search()
                var url="http://127.0.0.1:3000/details/pricedesc?gid="+this.gid+"&lid="+this.lid;
                this.axios.get(url).then((resu)=>{
                    this.dataList=resu.data.data;
                })
            }else if(e==4){
                var url="http://127.0.0.1:3000/details/renqi?gid="+this.gid+"&lid="+this.lid;
                this.axios.get(url).then((resu)=>{
                    this.dataList=resu.data.data;
                })
            }
            // 判断获取该页面名称
        },  
        search(){
            this.price=!this.price;
        },
        toDetails(e,m){
            let n=m>6?6:m;
            let testStr = encodeURIComponent(JSON.stringify(e));
            this.$router.push('/detailsmain?dataList='+testStr+"&did="+n)
        }
    },
    mounted(){
    },
    created(){
        // 获取上个页面传来的值
        this.gid=this.$route.query.gid;
        this.lid=this.$route.query.id;
        // 发请求，拿数据
        this.navcut(1);
    }
}
</script>

<style scoped>
    *{
        margin:0;
        padding:0;
        background:#fff;
        box-sizing: border-box;
    }
    .top{
        width:100%;
        height:3rem;
        text-align:center;
        line-height: 3rem;
        position: relative;
    }
    .top>h3{
        width:100%;
        height:100%;
        line-height: 3rem;
        font-size: 1.12rem;
        font-weight: normal;
    }
    .top>span{
        position:absolute;
        top:9px;
        left:5px;
        font-size: 2rem;
        color:#a7a7a7;
    }
    .nav{
        display:flex;
        justify-content: center;
        align-items: center;
        width:100%;
        height:1.9rem;
        border:1px solid rgba(0,0,0,0.1);
    }
    .nav>li{
        width:25%;
        height:100%;
        text-align: center;
        line-height: 1.9rem;
    }
    .relative{
        position: relative;
    }
    .relative>span:nth-child(2){
        position: absolute;
        top:0.2rem;
        left:4rem;
        font-size: 0.8rem
    }
    .relative>span:last-child{
        position: absolute;
        top:0.85rem;
        left:4rem;
        font-size: 0.8rem
    }
    .active{
        color:red;
    }
    .price{
        color:#333;
    }
    .container{
        width:100%;
        min-height:10rem;
        background:#f0f0f0;
        padding-top: 0.25rem;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .card{
        width:49.2%;
        height:15.4rem;
        background:#fff;
        margin-bottom:0.2rem;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items:center;
    }
    .card img{
        width:100%;
        height:10rem;
    }
    .card>li:nth-child(2),.card>li:nth-child(2)>p{
        width:10rem;
        height:2.7rem;
        font-size: 0.876rem;
        overflow: hidden;
        word-wrap:break-word;
        text-overflow:ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 2;
        -webkit-box-orient: vertical;
        color:#333;
    }
    .pay{
        width:100%;
        height:20px;
        padding:0 0.5rem;
    }
    .pay>span{
        color:#f81234;
        font-size: 0.9rem;
    }
    .pay>span:last-child{
        color:#999;
        font-size:0.7rem;
        margin-left:3.1rem;
    }
</style>
