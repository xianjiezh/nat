<template>
  <svg @click="$emit('click')" :class="{icon: true, loading: iconName==='loading'}">
    <use v-if="!hoverColor" :xlink:href="`#i-${iconName}`"></use>
    <use v-if="hoverColor"  :style="`fill: ${hoverColor}`" :xlink:href="`#i-${iconName}`"></use>
  </svg>
</template>

<script>
export default {
  name: "icon",
  props: {
    iconName: {
      type: String
    },
    hoverColor: {
      type: String
    }
  },
  created() {
    // log('color', this.iconColor)
  }
}
</script>

<style lang="scss" scoped>
.icon {
  height: 1em;
  width: 1em;
  transition: all .3s cubic-bezier(.645, .045, .355, 1);
  fill: inherit;
  &.primary {
    fill: #fff;
  }
  &.dashed {
    fill: rgba(0, 0, 0, .65);
  }
  &.dander {
    fill: $error-color;
  }
  &.default {
    fill: rgba(0, 0, 0, .65);
  }
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
