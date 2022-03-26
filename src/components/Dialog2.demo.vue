<demo>
一键打开 Dialog
</demo>
<template>
  <h1>示例2</h1>
  <Button @click="showDialog">show</Button>
</template>


<script lang="ts">
import Dialog from '../lib/Dialog.vue';
import Button from '../lib/Button.vue';
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