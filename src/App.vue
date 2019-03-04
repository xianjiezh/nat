<template>
  <div>
    <n-button icon="download">下载</n-button>
    <n-button icon="setting" icon-postion="right">设置</n-button>
  </div>
</template>

<script>
import NButton from './components/button'
import NIcon from './components/icon'

export default {
  name: 'app',
  components: {
    NButton,
    NIcon
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
