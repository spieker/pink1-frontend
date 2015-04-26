`import Ember from 'ember'`
`import Modal from '../../mixins/modal-component'`

ModalNewDomainComponent = Ember.Component.extend Modal,
  # attributes
  model: null

  # actions
  actions:
    cancel: ->
      @get('model').rollback()
      @get('model').deleteRecord()
      @_super()

    confirm: ->
      @get('model').save().then =>
        @$().modal 'hide'
        sweetAlert
          title: 'Domain created'
          type: 'success'
          timer: 1500
      , =>
        sweetAlert
          title: 'Error'
          text: 'Domain could not be created'
          type: 'error'

`export default ModalNewDomainComponent`
