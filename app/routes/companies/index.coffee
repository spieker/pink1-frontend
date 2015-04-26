`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

CompaniesIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    @store.find 'company'

`export default CompaniesIndexRoute`
