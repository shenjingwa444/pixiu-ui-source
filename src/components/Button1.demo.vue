<demo>
常规使用
</demo>
<template>
  <h1>示例1</h1>
  <div>
    <Button>你好</Button>
    <Button theme="button">你好</Button>
    <Button theme="link">你好</Button>
    <Button theme="text">你好</Button>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index';
export default {
  components:{Button},
}
</script>