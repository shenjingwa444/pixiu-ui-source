<demo>
常规使用
</demo>
<template>
  <h1>示例1</h1>
  <Button @click="toggle">toggle</Button>
  <Dialog v-model:visible="x"
          :closeOnClickOverlay="false"
          :ok="f1" :cancel="f2">
    <template v-slot:title>
      <strong>加粗的标题</strong>
    </template>
    <template v-slot:content>
      <div>hi</div>
      <div>hi2</div>
    </template>
  </Dialog>
</template>


<script lang="ts">
import {Dialog} from '../lib/index';
import {Button} from '../lib/index';
import {ref} from 'vue';
import {openDialog} from '../lib/openDialog';


export default {
  components: {Dialog, Button},
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      console.log(1);
      return false;
    };
    const f2 = () => {
      console.log(2);
    };
    const showDialog = ()=>{
      openDialog({
        title:'标题',
        content:'你好',
        ok(){
          console.log('ok')
        },
        cancel(){
          console.log('false')
        },
        closeOnClickOverlay:true
      })
    }
    return {x, toggle, f1, f2,showDialog};
  }
};
</script>