<template>
  <button class="n-button" :class="{[`icon-${iconPosition}`]: true}">
    <n-icon v-if="icon" :icon-name="icon"></n-icon>
    <div class="content">
      <slot></slot>
    </div>
  </button>
</template>

<script>

export default {
  name: "n-button",
  props: {
    icon: {},
    iconPosition: {
      type: String,
      default: 'left',
      validator(value) {
        return value == 'left' || value == 'right'
      }
    }
  }
};
</script>
  
<style lang="scss" scoped> 
.n-button {
  height: var(--button-height);
  font-size: var(--font-size);
  padding: 0 1em;
  border-radius: $border-radius-base;
  border: 1px solid $border-color-base;
  background-color: $primary-back-color;
  color: $primary-text-color;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  vertical-align: middle;
  cursor: pointer;
  box-shadow: $box-shadow-button;
  &.icon-left {
    >.icon {
      order: 1;
    }
    >.content {
      order: 2;
    }
  }
  &.icon-right {
    > .icon {
      order: 2;
    }
    >.content {
      order: 1;
    }
  }
  > .icon {
    vertical-align: middle;
    order: 1;
  }
  > .content {
    padding-left: .2em;
    padding-right: .2em;
  }
  &:hover {
    border-color: $border-color-hover;
    background-color: $primary-back-color-hover;
  }
  &:active {
    border-color: $border-color-active;
    background-color: $primary-back-color-active;
  }
  &:focus {
    outline: none;
  }
}
</style>
