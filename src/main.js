import Vue from 'vue'
import App from './App'
import NIcon from './components/icon'
import NButton from './components/button'
import chai from 'chai'
import spies from 'chai-spies'
chai.use(spies)
const { expect } = chai
Vue.component('n-icon', NIcon)

window.log = console.log.bind(console)

new Vue({
  el: '#app',
  render(h) {
    return h(App)
  }
})
