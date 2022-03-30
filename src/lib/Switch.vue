<template>
  <div>
    <button class="pixiu-switch" :class="{'pixiu-checked':value}" @click="toggle">
      <span></span>
    </button>
  </div>
</template>

<script lang="ts" setup>
const props = defineProps(
    {
      value: Boolean,
    }
);
const emit = defineEmits(['update:value']);
const toggle = () => {
  emit('update:value', !props.value);
};
</script>

<style lang="scss">
$h: 22px;
$h2: $h - 4px;
.pixiu-switch {
  height: $h;
  width: $h*2;
  background: gray;
  border: none;
  border-radius: $h/2;
  position: relative;

  > span {
    position: absolute;
    top: 2px;
    left: 2px;
    height: $h2;
    width: $h2;
    background: white;
    border-radius: $h2/2;
    transition: all 1s;
  }

  &.pixiu-checked {
    background: blue;

  }

  &.pixiu-checked > span {
    left: calc(100% - #{$h2} - 2px)
  }

  &:focus {
    outline: none;
  }

  &:active {
    > span {
      width: $h2 + 4px;
    }
  }

  &.pixiu-checked:active {
    > span {
      width: $h2 + 4px;
      margin-left: -4px;
    }
  }
}


</style>