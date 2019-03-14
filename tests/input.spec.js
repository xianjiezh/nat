import chai, { expect } from 'chai'
import sinon from 'sinon'
import sinonChai from 'sinon-chai'
import { shallowMount, mount } from '@vue/test-utils'
import Input from '../src/components/input'
chai.use(sinonChai)



describe('input.vue', () => {
  it('exist', () => {
    expect(Input).to.be.exist
  })
  it('could set placeholder', () => {
    const wrapper = mount(Input, {
      propsData: {
        placeholder: 'placeholder'
      }
    })
    const inputElement = wrapper.find('input')
    expect(inputElement.attributes().placeholder).to.be.equal('placeholder') 
  })
  it('could set width', () => {
    const wrapper = mount(Input, {
      attachToDocument: true,
      propsData: {
        width: '100px'
      }
    })
    const input = wrapper.element
    expect(getComputedStyle(input).width).to.be.equal("100px")
  })
  it('suport v-model', () => {
    const wrapper = mount(Input)
    const textInput = wrapper.find('input')
    textInput.setValue('input value')
    expect(textInput.element.value).to.be.equal('input value')
  })
})
