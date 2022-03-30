<demo>
支持 disabled
</demo>
<template>
  <h1>示例4</h1>
  <div>
    <Button disabled>禁用按钮</Button>
    <Button theme="link" disabled>禁用链接按钮</Button>
    <Button theme="link" disabled>禁用文字按钮</Button>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index';
export default {
  components:{Button},
}
</script>