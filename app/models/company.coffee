`import DS from 'ember-data'`

Company = DS.Model.extend
  # relations
  domains: DS.hasMany 'domain', async: true
  users: DS.hasMany 'user', async: true

  # attributes
  name: DS.attr 'string'

`export default Company`
