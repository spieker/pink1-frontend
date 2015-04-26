`import Ember from 'ember'`

UsersShowController = Ember.Controller.extend
  actions:
    delete: ->
      sweetAlert
        title: "Are you sure?"
        text: "You will not be able to recover the e-mail account"
        type: "warning"
        showCancelButton: true
        confirmButtonColor: "#DD6B55"
        confirmButtonText: "Yes, delete it!"
        closeOnConfirm: false
      , =>
        model = @get('model')
        company = model.get('company')
        model.deleteRecord()
        model.save().then =>
          sweetAlert
            title: 'Deleted'
            type: 'success'
            timer: 1500
          @transitionToRoute 'companies.show', company
        , ->
          sweetAlert
            title: 'Error'
            text: 'could not be deleted'
            type: 'error'

`export default UsersShowController`
