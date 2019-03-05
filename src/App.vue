<template>
  <div>
    <!-- <n-button icon="download">下载</n-button>
    <n-button icon="setting" icon-position="right">设置</n-button>
    <n-button loading icon-position="right">加载中</n-button>
    <n-button @click="clickToLoading" :loading="isLoading" icon-position="right">加载中</n-button>
    <div>
      <button-group>
        <n-button icon="setting" loading>left</n-button>
        <n-button>more</n-button>
        <n-button icon="right" icon-position="right">right</n-button>
      </button-group>
    </div> -->
    <n-input v-model="name" />
    name: {{name}}
  </div>
</template>

<script>
import NButton from "./components/Button";
import ButtonGroup from "./components/ButtonGroup";
import NInput from './components/Input'
export default {
  name: "app",
  components: {
    NButton,
    ButtonGroup,
    NInput,
  },
  data() {
    return {
      isLoading: false,
      name: 'xxx',
    };
  },
  methods: {
    clickToLoading() {
      this.isLoading = !this.isLoading;
    }
  }
};
</script>

<style lang="scss">
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  background-color: $primary-back-color;
}
</style>
