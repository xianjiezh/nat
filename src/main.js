import Vue from 'vue'
import App from './App'
import NIcon from './components/icon'

Vue.component('n-icon', NIcon)

new Vue({
  el: '#app',
  
  render(h) {
    return h(App)
  }
})