`import Ember from 'ember'`

CompaniesShowController = Ember.Controller.extend
  actions:
    addUser: ->
      user = @store.createRecord 'user', company: @get('model')
      @send 'openModal', 'new-user', user

`export default CompaniesShowController`
