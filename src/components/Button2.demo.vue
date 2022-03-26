<demo>
支持 size
</demo>
<template>
  <h1>示例2</h1>
  <div>
    <div>
      <Button size="big" theme="button">大大大</Button>
      <Button theme="button">普普普</Button>
      <Button size="small" theme="button">小小小</Button>
    </div>
    <div>
      <Button size="big" theme="link">大大大</Button>
      <Button theme="link">普普普</Button>
      <Button size="small" theme="link">小小小</Button>
    </div>
    <div>
      <Button size="big" theme="text">大大大</Button>
      <Button theme="text">普普普</Button>
      <Button size="small" theme="text">小小小</Button>
    </div>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue';
export default {
  components:{Button},
}
</script>