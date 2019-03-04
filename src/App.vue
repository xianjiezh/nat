<template>
  <div>
    <n-button icon="download">下载</n-button>
    <n-button icon="setting" icon-position="right">设置</n-button>
    <n-button loading icon-position="right">加载中</n-button>
    <n-button @click="clickToLoading" :loading="isLoading" icon-position="right">加载中</n-button>
  </div>
</template>

<script>
import NButton from './components/button'

export default {
  name: 'app',
  components: {
    NButton,
  },
  data() {
    return {
      isLoading: false
    }
  },
  methods: {
    clickToLoading() {
      this.isLoading = !this.isLoading 
    }
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  background-color: $primary-back-color;
}
</style>
