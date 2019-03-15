<template>
<div id="app">
  <div class="container">
    <!-- <n-button type="primary" icon="setting">primary</n-button> -->
    <!-- <n-button type="dashed" icon="setting">hhh</n-button> -->
    <!-- <n-button type="dashed" icon="left">dashed</n-button>
    <n-button icon="left">default</n-button>
    <n-button type="danger" icon="left">danger</n-button> -->
    <!-- <n-input v-model="value" placeholder="aaa" clearable></n-input> -->
    <!-- <n-input width="200px" v-model="value" placeholder="placeholder"></n-input>
    <div>{{value}}</div> -->
    <n-carousel>
      <n-carousel-item>
        <div class="content">
          <h1>content 1 </h1>
        </div>
      </n-carousel-item>
      <n-carousel-item>
        <div class="content">
          <h1>content 2 </h1>
        </div>
      </n-carousel-item>
      <n-carousel-item>
        <div class="content">
          <h1>content 3 </h1>
        </div>
      </n-carousel-item>
    </n-carousel>
  </div>
</div>
</template>

<script>

import NButton from "./components/button"
import ButtonGroup from "./components/button-group"
import NInput from './components/input'
import NCarousel from './components/carousel'
import NCarouselItem from './components/carousel-item'

export default {
  name: "app",
  components: {
    NButton,
    ButtonGroup,
    NInput,
    NCarousel,
    NCarouselItem,
  },
  data() {
    return {
      isLoading: false,
      value: '',
    }
  },
  methods: {
  }
}
</script>

<style lang="scss">
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  padding: 10px;
  .content {
    background-color: #506b9e;
    height: 200px;
    width: 300px;
    > h1 {
      color: #fff;
    }
  }
}
</style>
