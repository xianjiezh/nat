import Vue from 'vue'
import App from './App'
import NIcon from './components/icon'
Vue.component('n-icon', NIcon)

window.log = console.log.bind(console)

new Vue({
  el: '#app',
  render(h) {
    return h(App)
  }
})
