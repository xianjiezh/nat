<template>
   <div :style="`width: ${width};`" class="n-input-wrapper">
    <input
      :style="`width: ${width}; height: ${inputHeight}`" 
      :value="inputValue" 
      :placeholder="placeholder" 
      @input="onInput($event)" 
      class="n-input" 
      :type="inputType">
    <n-icon @click="clearInput" icon-name="clear" v-if="clearable"></n-icon>
    <n-icon @click="passwordClick" :icon-name="passwordIcon" style="display: inline" v-if="type==='password'"></n-icon>
  </div>
</template>

<script>
import NIcon from './icon'
export default {
  name: 'NInput',
  components: {
    NIcon
  },
  computed: {
    inputHeight() {
      const sizes = {
        small: '24px',
        default: '32px',
        large: '40px',
      }
      return sizes[this.size]
    }
  },
  data() {
    return {
      passwordIcon: 'eye',
      inputType: 'text'
    }
  },
  // model定义组件上v-model的行为
  // 也就是 bind:prop和 on(event)
  model: {
    prop: 'inputValue',
    event: 'input-change'
  },
  props: {
    inputValue: String,
    placeholder: String,
    width: {
      type: String,
      default: '100%'
    },
    clearable: {
      type: Boolean,
      default: false
    },
    password: {
      type: Boolean,
      default: false
    },
    type: {
      type: String,
      default: 'text',
      validator(value) {
        const posible = ['text', 'textarea', 'password']
        return posible.indexOf(value) > -1
      },
    },
    size: {
      type: String,
      default: 'default',
      validator(value) {
        return value === 'large' || value === 'small'| value === 'default'
      }
    }
  },
  methods: {
    onInput(e) {
      this.$emit('input-change', e.target.value)
    },
    clearInput() {
      // 不能直接修改父组件的数据, 应该 emit 一个状态去改
      this.$emit('input-change', '')
    },
    passwordClick() {
      if (this.passwordIcon === 'eye') {
        this.passwordIcon = 'eye-close'
        this.inputType = 'text'
      } else if (this.passwordIcon === 'eye-close') {
        this.passwordIcon = 'eye'
        this.inputType = 'password'
      }
    }
  },
  created() {
    this.inputType = this.type
  }
}
</script>

<style lang="scss" scoped>
.n-input-wrapper {
  position: relative;
  height: 32px;
  &:hover {
    > .icon {
      display: inline-block;
    }
  }
  > .n-input {
    position: absolute;
    top: 0;
    left: 0;
    padding: 4px 7px;
    color: rgba(0,0,0,0.65);
    font-size: 14px;
    line-height: 1.5;
    border-radius: $border-radius-base;
    height: $primary-height;
    border: 1px solid #d9d9d9;
    border-radius: $border-radius-base;
    transition: all .3s;
    outline: none;
    &:hover {
      border-color: #40a9ff;
    }
    &:focus {
      box-shadow: 0 0 0 2px rgba(45,140,240,.2);
      border-color: #57a3f3;
    }
  }
  > .icon {
    display: none;
    fill: #808695;
    position: absolute;
    right: .5em;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
  }
}
</style>
