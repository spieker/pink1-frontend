`import Ember from 'ember'`
`import Modal from '../../mixins/modal-component'`

ModalNewAliasComponent = Ember.Component.extend Modal,
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
          title: 'Alias created'
          type: 'success'
          timer: 1500
      , =>
        sweetAlert
          title: 'Error'
          text: 'Alias could not be created'
          type: 'error'

`export default ModalNewAliasComponent`
