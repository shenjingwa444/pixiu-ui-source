<demo>
支持 loading
</demo>
<template>
  <h1>示例5</h1>
  <div>
    <Button :loading="true">加载中</Button>
    <Button>加载完毕</Button>
  </div>
</template>

<script lang="ts">
import {Button} from '../lib/index';

export default {
  components: {Button},
};
</script>