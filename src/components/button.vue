<template>
  <button class="n-button" 
    :class="{
      [`icon-${iconPosition}`]: true, 
      loading: loading, 
      disabled: disabled,
      'btn-default': type=='default',
      'btn-primary': type=='primary',
      'btn-dashed': type=='dashed',
      'btn-danger': type=='danger',
    }"
    @click="buttonClickEvent"
  >
    <n-icon 
      v-if="icon&&(!loading)" 
      :icon-name="icon"
    />
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
    }, 
    type: {
      type: String,
      default: 'default',
      validator(value) {
        const types = {
          default: true,
          primary: true,
          dashed: true,
          danger: true,
        }
        return !!types[value]
      }
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
  },
  created() {
  }
}
</script>
  
<style lang="scss" scoped> 
.n-button {
  height: $primary-height;
  font-size: $font-size;
  padding: 0 1em;
  border-radius: $border-radius-base;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  vertical-align: middle;
  cursor: pointer;
  box-shadow: $box-shadow-button;
  transition: all .3s cubic-bezier(.645, .045, .355, 1);
  position: relative;
  &:focus {
    outline: none;
  }
  &.btn-primary {
    border: 1px solid $button-color-base;
    background-color: $primary-back-color;
    color: $primary-text-color;
    > svg.icon {
      fill: #fff;
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
      color: #fff;
      background-color: #40a9ff;
      border-color: #40a9ff;
    }
  }
  &.btn-default {
    border: 1px solid #d9d9d9;
    background-color: #fff;
    color: rgba(0, 0, 0, 0.65);
    &:hover {
      color: #40a9ff;
      border-color: #40a9ff;
      > svg.icon {
        fill: #40a9ff;
      }
    }
    &:focus {
      color: #40a9ff;
      border-color: #40a9ff;
      > svg.icon {
        fill: #40a9ff;
      }
    }
    &:active {
      color: #096dd9;
      border-color: #096dd9;
      > svg.icon {
        fill: #096dd9;
      }
    }
  }
  &.btn-dashed {
    border: 1px dashed #d9d9d9;
    color: rgba(0, 0, 0, 0.65);
    background-color: #fff;
    &:hover {
      color: #40a9ff;
      border-color: #40a9ff;
      > svg.icon {
        fill: #40a9ff;
      }
    }
    &:active {
      color: #096dd9;
      border-color: #096dd9;
      > svg.icon {
        fill: #096dd9;
      }
    }
    &:focus {
      color: #40a9ff;
      border-color: #40a9ff;
      > svg.icon {
        fill: #40a9ff;
      }
    }
  }
  &.btn-danger {
    color: #f5222d;
    background-color: #f5f5f5;
    border: 1px solid #d9d9d9;
    > svg.icon {
      fill: #f5222d;
    }
    &:focus {
      color: #ff4d4f;
      background-color: #fff;
      border-color: #ff4d4f;
      > svg.icon {
        fill: #ff4d4f;
      }
    }
    &:hover {
      color: #fff;
      border-color: $error-color;
      background-color: $error-color;
      > svg.icon {
        fill: #fff;
      }
    }
    &:active {
      color: #fff;
      background-color: #cf1322;
      border-color: #cf1322;
      > svg.icon {
        fill: #fff;
      }
    }
    
  }
  
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
}
</style>
