<template>
  <svg :class="{icon: true, loading: iconName==='loading'}">
    <use :xlink:href="`#i-${iconName}`"></use>
  </svg>
</template>

<script>
export default {
  name: "icon",
  props: ["iconName"],
  created() {
    
  }
}
</script>

<style lang="scss" scoped>
.icon {
  height: 1em;
  width: 1em;
  &.loading {
    animation: spin 1s infinite linear;
  }
  @keyframes spin {
    0% {
      transform: rotate(0deg);
    }
    100% {
      transform: rotate(360deg);
    }
  }
}
</style>
