`import Ember from 'ember'`

CompaniesShowController = Ember.Controller.extend
  actions:
    addUser: ->
      user = @store.createRecord 'user', company: @get('model')
      @send 'openModal', 'new-user', user

    addDomain: ->
      domain = @store.createRecord 'domain', company: @get('model')
      @send 'openModal', 'new-domain', domain

    deleteDomain: (domain) ->
      sweetAlert
        title: "Are you sure?"
        type: "warning"
        showCancelButton: true
        confirmButtonColor: "#DD6B55"
        confirmButtonText: "Yes, delete it!"
        closeOnConfirm: false
      , =>
        domain.deleteRecord()
        domain.save().then ->
          sweetAlert
            title: 'Deleted'
            type: 'success'
            timer: 1500
        , ->
          sweetAlert
            title: 'Error'
            text: 'could not be deleted'
            type: 'error'

`export default CompaniesShowController`
