import chai, { expect } from 'chai'
import sinon from 'sinon'
import sinonChai from 'sinon-chai'
import { shallowMount, mount } from '@vue/test-utils'
import Button from '../src/components/button'
chai.use(sinonChai)

describe('button.vue', () => {
  it('exist.', () => {
    expect(Button).to.exist
  })
  it('could set icon.', () => {
    const wrapper = mount(Button, {
      propsData: {
        icon: 'settings'
      }
    })
    const useElement = wrapper.find('use')
    expect(useElement.attributes()['href']).to.equal('#i-settings')
  })
  it('could set loading.', () => {
    const wrapper = mount(Button, {
      propsData: {
        icon: 'settings',
        loading: true
      }
    })
    const vm = wrapper.vm
    const useElements = vm.$el.querySelectorAll('use')
    expect(useElements.length).to.equal(1)
    expect(useElements[0].getAttribute('xlink:href')).to.equal('#i-loading')
  })
  it('icon default position should at left', () => {
    const wrapper = mount(Button, {
      attachToDocument: true,
      propsData: {
        icon: 'settings',
      }
    })
    const vm = wrapper.vm
    const icon = vm.$el.querySelector('svg')
    expect(getComputedStyle(icon).order).to.eq('1')
  })
  it('iconPosition cause icon position change', () => {
    const wrapper = mount(Button, {
      attachToDocument: true,
      propsData: {
        icon: 'settings',
        iconPosition: 'right'
      }
    })
    const vm = wrapper.vm
    const icon = vm.$el.querySelector('svg')
    expect(getComputedStyle(icon).order).to.eq('2')
  })
  it('click on button can emit a event', () => {
    const wrapper = mount(Button, {
      propsData: {
        icon: 'settings',
      }
    })
    const vm = wrapper.vm
    const callback = sinon.fake();
    vm.$on('click', callback)
    vm.$el.click()
    expect(callback).to.have.been.called

  })
  it('click event is disabled when loading', () => {
    const wrapper = mount(Button, {
      propsData: {
        loading: true
      }
    })
    const vm = wrapper.vm 
    const callback = sinon.fake()
    vm.$on('click', callback)
    vm.$el.click()
    expect(callback).not.have.been.called
  })
  it('button has type', () => {
    const wrapper = mount(Button, {
      propsData: {
        type: 'danger'
      }
    })
    const el = wrapper.vm.$el
    expect(el.classList.contains('btn-danger')).to.be.true
  })
})

