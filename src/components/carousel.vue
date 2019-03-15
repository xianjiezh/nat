<template>
  <div class="n-carousel">
    <div class="carousel-view" 
      :style="`width: ${containerWidth}px;`">
      <div 
        class="carousel-wrapper"
        :style="`
        transition: transform .5s ease; 
        transform: translate3d(${transformDistance}px, 0, 0);
        `"
      >
      <slot></slot>  
    </div>
    </div>
    
    <div @click="movePrev" class="button-prev">上一个</div>
    <div @click="moveNext" class="button-next">下一个</div>
    <div class="nav-bar"></div>
  </div>
</template>

<script>
import NCarouselItem from '../components/carousel-item'
export default {
  name: 'n-carousel',
  data() {
    return {
      currentIndex: 0,
      containerWidth: '',
      carouselNum: 0,
    }
  },
  watch: {
    currentIndex(newValue, oldValue) {
      if (newValue < 0) {
        this.currentIndex = this.carouselNum - 1
        return  
      }
      this.currentIndex = this.currentIndex % this.carouselNum
    }
  },
  computed: {
    transformDistance() {
      return -1 * this.currentIndex * (this.containerWidth - 0)
    }
  },
  props: {
    autoPlay: {
      type: Boolean,
      default: false,
    }
  },
  methods: {
    movePrev() {
      this.currentIndex -= 1
    },
    moveNext() {
      this.currentIndex += 1
    }
  },
  mounted() {
    const width = window.getComputedStyle(this.$el.querySelector('.n-carousel-item')).width
    if (width) {
      this.containerWidth = width.match(/(\S*?)px$/)[1] - 0
    }
    this.carouselNum = this.$el.querySelector('.carousel-wrapper').children.length 
  }
}
</script>

<style lang="scss" scoped>
.n-carousel {
  .carousel-view {
    overflow-x: hidden;
  > .carousel-wrapper {
      display: flex;
      flex-wrap: nowrap;
      flex-shrink: 1;
    }
  }
  
  > .button-prev {
    height: 50px;
    width: 50px;
    border-radius: 50%;
    background-color: #fff;
    background-color: #ddd;
    cursor: pointer;
  }
  > .button-next {
    @extend .button-prev;
  }
}
</style>
