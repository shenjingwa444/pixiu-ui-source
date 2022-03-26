<template>
  <div class="pixiu-tabs">
    <div class="pixiu-tabs-nav" ref="container">
      <div :class="{selected:t===selected}"
           @click="select(t)" class="pixiu-tabs-nav-item"
           v-for="(t,index) in titles" :key='index'
           :ref="el => { if (t===selected) selectedItem = el }">{{ t }}
      </div>
      <div class="pixiu-tabs-nav-indicator" ref="indicator"></div>
    </div>
    <div class="pixiu-tabs-content">
      <component :is="current" :key="current.props.title" class="pixiu-tabs-content-item"/>
    </div>
  </div>
</template>

<script lang="ts">
import Tab from './Tab.vue';
import {computed, ref, watchEffect} from 'vue';

export default {
  props: {
    selected: {
      type: String,
    }
  },
  setup(props, context) {
    const selectedItem = ref<HTMLDivElement>(null);
    const container = ref<HTMLDivElement>(null);
    const indicator = ref<HTMLDivElement>(null);
    watchEffect(() => {
      const {width} = selectedItem.value.getBoundingClientRect();
      indicator.value.style.width = width + 'px';
      const {left: left1} = container.value.getBoundingClientRect();
      const {left: left2} = selectedItem.value.getBoundingClientRect();
      const left = left2 - left1;
      indicator.value.style.left = left + 'px';
    }, {flush: 'post'});
    const defaults = context.slots.default();
    const titles = defaults.map(tag => tag.props.title);
    const current = computed(() => {
      return defaults.filter((tag) => {
        return tag.props.title === props.selected;
      })[0];
    });
    defaults.forEach((tag) => {
      if (tag.type !== Tab) {
        throw new Error('Tabs 字标签必须是 Tab');
      }
    });
    const select = (title) => {
      context.emit('update:selected', title);
    };
    return {
      defaults, titles, current, select, indicator, container, selectedItem,
    };
  }
};
</script>

<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;

.pixiu-tabs {
  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    position: relative;

    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;

      &:first-child {
        margin-left: 0;
      }

      &.selected {
        color: $blue;
      }
    }

    &-indicator {
      position: absolute;
      height: 3px;
      background: $blue;
      left: 0;
      bottom: -1px;
      width: 100px;
      transition: all 250ms;
    }
  }

  &-content {
    padding: 8px 0;
  }
}
</style>