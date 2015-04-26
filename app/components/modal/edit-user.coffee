`import Ember from 'ember'`
`import Modal from '../../mixins/modal-component'`

ModalEditUserComponent = Ember.Component.extend Modal,
  # attributes
  model: null

  # actions
  actions:
    cancel: ->
      @get('model').rollback()
      @_super()

    confirm: ->
      @get('model').save().then =>
        @$().modal 'hide'
        sweetAlert
          title: 'User changed'
          type: 'success'
          timer: 1500
      , =>
        sweetAlert
          title: 'Error'
          text: 'User could not be changed'
          type: 'error'

`export default ModalEditUserComponent`

