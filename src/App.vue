<template>
<div id="app">
  <div class="container">
    <!-- <n-button type="primary" icon="setting">primary</n-button> -->
    <!-- <n-button type="dashed" icon="setting">hhh</n-button> -->
    <!-- <n-button type="dashed" icon="left">dashed</n-button>
    <n-button icon="left">default</n-button>
    <n-button type="danger" icon="left">danger</n-button> -->
    <!-- <n-input v-model="value" placeholder="aaa" clearable></n-input> -->
    <n-input v-model="value" placeholder="placeholder" type="password"></n-input>
    <div>{{value}}</div>
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
      value: '',
    }
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
