`import Ember from 'ember'`

ModalComponentMixin = Ember.Mixin.create
  # config
  classNames: ['modal', 'fade']

  # attributes
  backdrop: true
  keyboard: true
  show: true

  # events
  didInsertElement: ->
    @$().on 'hidden.bs.modal', ->
      $(this).trigger 'vi-closed'

    @$().on 'shown.bs.modal', ->
      $(this).find('input#vi-title').focus()

    modal = @$().modal
      backdrop: 'static'
      keyboard: @get 'keyboard'
      show:     @get 'show'

  click: (event) ->
    unless @get('backdrop').toString().toLowerCase() is 'static'
      @send 'cancel' if event.target is @$()[0]

  # actions
  actions:
    cancel: ->
      @$().modal('hide').one 'hidden.bs.modal', =>
        @sendAction 'canceled'

    confirm: ->
      @$().modal('hide').one 'hidden.bs.modal', =>
        @sendAction 'confirmed'

    openModal: (modal, model) ->
      @$().one 'hidden.bs.modal', =>
        applicationRoute = @get('container').lookup('route:application')
        applicationRoute.send('openModal', modal, model)
      @$().modal('hide')

`export default ModalComponentMixin`

