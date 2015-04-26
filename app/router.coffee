`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

router = Router.map ->
  @route 'companies', path: '/', ->
    @route 'show', path: ':company_id'
  @route 'users', path: '/users', ->
    @route 'show', path: ':user_id'
  @route 'login', path: '/login'

`export default router`
