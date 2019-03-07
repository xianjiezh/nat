<template>
  <button class="n-button" 
    :class="{[`icon-${iconPosition}`]: true, loading: loading, disabled: disabled}"
    @click="buttonClickEvent"
  >
    <n-icon v-if="icon&&(!loading)" :icon-name="icon"></n-icon>
    <n-icon v-if="loading" icon-name="loading"></n-icon>
    <div class="content">
      <slot></slot>
    </div>
    <div class="loading-mask" v-if="loading"></div>
  </button>
</template>

<script>
import NIcon from "./icon"

export default {
  name: "n-button",
  props: {
    icon: {},
    loading: {
      type: Boolean,
      default: false,
    },
    iconPosition: {
      type: String,
      default: 'left',
      validator(value) {
        return value == 'left' || value == 'right'
      }
    },
    disabled: {
      type: Boolean,
      default: false,
    }
  },
  components: {
    NIcon
  },
  methods: {
    buttonClickEvent() {
      if (!this.loading) {
        this.$emit('click')
      }
    }
  }
}
</script>
  
<style lang="scss" scoped> 
.n-button {
  height: $primary-height;
  font-size: $font-size;
  padding: 0 1em;
  border-radius: $border-radius-base;
  border: 1px solid $button-color-base;
  background-color: $primary-back-color;
  color: $primary-text-color;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  vertical-align: middle;
  cursor: pointer;
  box-shadow: $box-shadow-button;
  transition: all .3s cubic-bezier(.645, .045, .355, 1);
  position: relative;
  &.loading {
    pointer-events: none;
    > .loading-mask {
      position: absolute;
      top: -1px;
      left: -1px;
      display: inline-block;
      width: calc(100% + 2px);
      height: calc(100% + 2px);
      pointer-events: none;
      opacity: 0.35;
      background-color: #fff; 
      transition: opacity .2s;
    }
  }
  &.disabled {
    
  }
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
    user-select: none;
  }
  &:hover {
    border-color: $primary-color-hover;
    background-color: $primary-back-color-hover;
  }
  &:active {
    border-color: $button-color-active;
    background-color: $primary-back-color-active;
  }
  &:focus {
    outline: none;
  }
}
</style>
