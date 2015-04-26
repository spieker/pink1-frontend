`import Ember from 'ember'`
`import ModalComponentMixin from '../../../mixins/modal-component'`
`import { module, test } from 'qunit'`

module 'ModalComponentMixin'

# Replace this with your real tests.
test 'it works', (assert) ->
  ModalComponentObject = Ember.Object.extend ModalComponentMixin
  subject = ModalComponentObject.create()
  assert.ok subject
