`import Ember from 'ember'`

ModalRouteMixin = Ember.Mixin.create
  # actions
  actions:
    openModal: (name, model, args...) ->
      type            = "modal/#{name}"
      container       = @get('container')
      componentLookup = container.lookup('component-lookup:main')
      component       = componentLookup.lookupFactory(type, container)
      component       = component.extend
        didInsertElement: ->
          @$().on 'modal-closed', ->
            modal.destroy()
          @_super()
      modal = component.create model: model, args: args
      modal.appendTo Ember.$('body')

`export default ModalRouteMixin`
