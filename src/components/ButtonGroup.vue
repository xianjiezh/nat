<template>
  <div class="n-button-group">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: 'button-group',
  mounted() {
    for (let button of this.$el.children) {
      if (button.tagName !== 'BUTTON') {
        console.warn('button-group的子元素应该是button')
      }
    }
  }
}
</script>

<style lang="scss" scoped>
.n-button-group {
  display: inline-flex;
  vertical-align: middle;
  > .n-button {
    border-radius: 0;
    &:first-child {
      border-top-left-radius: $border-radius-base;
      border-bottom-left-radius: $border-radius-base;
    }
    &:last-child {
      border-top-right-radius: $border-radius-base;
      border-bottom-right-radius: $border-radius-base;
    }
  }
}
</style>
