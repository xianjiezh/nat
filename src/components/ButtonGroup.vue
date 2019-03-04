<template>
  <div class="n-button-group">
    <slot></slot>
  </div>
</template>

<script>
export default {
  name: 'button-group',

};
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
