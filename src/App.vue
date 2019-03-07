<template>
<div id="app">
  <div class="container">
    <n-button @click="isLoading = true" :loading="isLoading">disabled</n-button>
  </div>
</div>

</template>

<script>
import NButton from "./components/button"
import ButtonGroup from "./components/button-group"
import NInput from './components/input'
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
  padding: 10px;
}
</style>
