`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`
`import ModalRouteMixin from '../mixins/modal-route'`

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin, ModalRouteMixin

`export default ApplicationRoute`
