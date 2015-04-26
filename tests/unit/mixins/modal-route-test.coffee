`import Ember from 'ember'`
`import ModalRouteMixin from '../../../mixins/modal-route'`
`import { module, test } from 'qunit'`

module 'ModalRouteMixin'

# Replace this with your real tests.
test 'it works', (assert) ->
  ModalRouteObject = Ember.Object.extend ModalRouteMixin
  subject = ModalRouteObject.create()
  assert.ok subject
