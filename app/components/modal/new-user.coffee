`import Ember from 'ember'`
`import Modal from '../../mixins/modal-component'`

ModalNewUserComponent = Ember.Component.extend Modal,
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
          title: 'User created'
          type: 'success'
          timer: 1500
      , =>
        sweetAlert
          title: 'Error'
          text: 'User could not be created'
          type: 'error'

`export default ModalNewUserComponent`
