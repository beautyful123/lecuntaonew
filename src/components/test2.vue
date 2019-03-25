<template>
    <div>
        <ul style="float:left">
            <li v-for="(item,k) of list" :key="k" @click="fn(k+1)">{{item}}</li>
        </ul>
        <ol style="float:right">
            <li v-show="a==1">11111111111111111Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eius excepturi obcaecati maiores deleniti. Beatae quae similique dignissimos, magnam cupiditate reprehenderit esse aliquam architecto, cum laboriosam assumenda debitis iure quis.</li>
            <li v-show="a==2">222222222222222222222222Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eius excepturi obcaecati maiores deleniti. Beatae quae similique dignissimos, magnam cupiditate reprehenderit esse aliquam architecto, cum laboriosam assumenda debitis iure quis.</li>
            <li v-show="a==3">33333333333333333333333333333333Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eius excepturi obcaecati maiores deleniti. Beatae quae similique dignissimos, magnam cupiditate reprehenderit esse aliquam architecto, cum laboriosam assumenda debitis iure quis.</li>
            <li v-show="a==4">444444444444444444444Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eius excepturi obcaecati maiores deleniti. Beatae quae similique dignissimos, magnam cupiditate reprehenderit esse aliquam architecto, cum laboriosam assumenda debitis iure quis.</li>
            <li v-show="a==5">55555555555555555555555Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eius excepturi obcaecati maiores deleniti. Beatae quae similique dignissimos, magnam cupiditate reprehenderit esse aliquam architecto, cum laboriosam assumenda debitis iure quis.</li>
        </ol>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:["搜索","啊啊","信息","哈哈","呃呃"],
            a:1
        }
    },
    methods:{
        fn(e){
            this.a=e;
        }
    }
}
</script>
<style scoped>
    *{
        padding:0;
        margin:0;
        box-sizing: border-box;
    }
    ul{
        list-style: none;
    }
    ul>li{
        width:300px;
        height:90px;
        line-height:90px;
        text-align: center;
        background:rgba(82,82,82,0.4);
        color:aqua;
    }
    ol{
        width:800px;
        height:450px;
        color:red;
        list-style: none;
    }
    ol>li{
        width:800px;
        background:bisque;

        height:450px;
    }
</style>


