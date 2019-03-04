import Vue from 'vue'
import App from './App'
import NIcon from './components/icon'
import NButton from './components/Button'
import chai from 'chai'
import spies from 'chai-spies'
chai.use(spies)
const {expect} = chai
Vue.component('n-icon', NIcon)

window.log = console.log.bind(console)
new Vue({
  el: '#app',
  render(h) {
    return h(App)
  }
})



{
  let Constructor = Vue.extend(NButton)
  const button = new Constructor({
    propsData: {
      icon: 'setting'
    }
  })
  button.$mount()
  let useElement = button.$el.querySelector('use')
  expect(useElement.getAttribute('xlink:href')).to.eq('#i-setting')
  button.$el.remove()
  button.$destroy()
}

{
  let Constructor = Vue.extend(NButton)
  const button = new Constructor({
    propsData: {
      icon: 'setting',
      loading: true,
    }
  })
  button.$mount()
  let useElement = button.$el.querySelector('use')
  expect(useElement.getAttribute('xlink:href')).to.eq('#i-loading')
  button.$el.remove()
  button.$destroy()
}
{
  let Constructor = Vue.extend(NButton)
  const button = new Constructor({
    propsData: {
      icon: 'setting',
      iconPosition: 'right'
    }
  })
  const div = document.createElement('div')
  document.body.appendChild(div)
  button.$mount(div)
  let svg = button.$el.querySelector('svg')
  let order = getComputedStyle(svg).order
  expect(order).to.eq('2')
  button.$el.remove()
  button.$destroy()
}
{
  let Constructor = Vue.extend(NButton)
  const button = new Constructor({
    propsData: {
      icon: 'setting'
    }
  })
  const div = document.createElement('div')
  document.body.appendChild(div)
  button.$mount(div)
  let svg = button.$el.querySelector('svg')
  let order = getComputedStyle(svg).order
  expect(order).to.eq('1')
  button.$el.remove()
  button.$destroy()
}
{
  let Constructor = Vue.extend(NButton)
  const VueButton = new Constructor({
    propsData: {
      icon: 'setting',
    }
  })
  const div = document.createElement('div')
  document.body.appendChild(div)
  VueButton.$mount(div)
  // let isClick = false
  // VueButton.$on('click', () => {
  //   isClick = true
  // })
  // let button = VueButton.$el
  // button.click()
  // expect(isClick).to.be.true
  let spy = chai.spy(()=>{})
  VueButton.$on('click', spy)
  let button = VueButton.$el 
  button.click()
  expect(spy).to.have.be.called()
}