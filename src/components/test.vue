<template>
    <div>
        <el-button @click="fn">clickMe</el-button>
        a:{{a}},b:{{b}}
    </div>
</template>
<script>
export default {
    data(){
        return {
            a:1
        }
    },
    computed:{
        b(){
            return {class:this.a%2==1};
        }
    },
    methods:{
        fn(){
            this.a++;
        }
    }
    
}
</script>

