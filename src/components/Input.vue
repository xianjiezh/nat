<template>
  <div class="n-input-wrapper">
    <input :value="name" @input="onInput($event)" class="n-input" type="text">
  </div>

</template>

<script>
export default {
  name: 'NInput',
  data() {
    return {
      
    }
  },
  // model定义组件上v-model的行为
  // 也就是 bind:prop和 on(event)
  model: {
    prop: 'name',
    event: 'change'
  },
  props: {
    name: String
  },
  methods: {
    onInput(e) {
      this.$emit('change', e.target.value)
    }
  }
}
</script>

<style lang="scss" scoped>
.n-input-wrapper {
  .n-input {
    padding: 4px 7px;
  }
}
</style>
